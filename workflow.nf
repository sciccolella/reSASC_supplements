// vim:ft=groovy

process cvt_scite_input {
  conda 'numpy'

  input:
  path in_mat

  output:
  path '*.in'

  script:
  """
  python $params.scripts.sasc2scite $in_mat > ${in_mat.baseName}.in
  """
}

process run_infscite {
  input:
  path in_mat

  output:
  path '*_map0.gv', emit: tree
  path '*.log', emit: log

  script:
  """
  $params.sw.infscite -i $in_mat -n 50 -m 250 \
    -fd $params.FP -ad $params.FN \
    -r $params.infscite.r -l $params.infscite.l \
    -s -e .2 -p 10000 -d \
    -max_treelist_size 1 \
    -rec $params.infscite.rec -a > ${in_mat.baseName}.log
  """
}

process trim_infscite {
  cache false
  input:
  path tin

  output:
  path "*.trimmed.gv"

  script:
  """
  python $params.scripts.infsciteTrim $tin > ${tin.baseName}.trimmed.gv
  """
}

process mat_infscite {
  cache false
  input:
  path tin

  output:
  path '*.mout.txt'

  script:
  """
  python $params.scripts.infscite2mat -f $tin -m 50 > ${tin.baseName}.mout.txt
  """
}

process run_resasc {
  cpus 1

  input:
  path in_mat

  output:
  path '*.resasc.mlt.gv', emit: tree
  path '*.resasc.out.txt', emit: mat

  script:
  """
  $params.sw.resasc -i $in_mat -m 50 -n 250 \
    -b $params.FP -a $params.FN \
    -k $params.resasc.MAXL -j $params.resasc.MAXR \
    -d $params.resasc.MAXL -c $params.resasc.MAXR \
    -r $params.resasc.r -S $params.resasc.S -C $params.resasc.C \
    -p $task.cpus \
    -g $params.resasc.g -q $params.resasc.q -x \
    -P ${in_mat.baseName}.resasc
  """
}

process run_sasc {
  cpus 1

  input:
  path in_mat

  output:
  path '*.sasc.mlt.gv', emit: tree
  path '*.sasc.out.txt', emit: mat

  script:
  """
  $params.sw.sasc -i $in_mat -m 50 -n 250 \
    -b $params.FP -a $params.FN \
    -k $params.resasc.MAXL \
    -d $params.resasc.MAXL \
    -r $params.resasc.r -S $params.resasc.S -C $params.resasc.C \
    -p $task.cpus \
    -g $params.resasc.g -x \
    -P ${in_mat.baseName}.sasc
  """
}

process run_ppsasc {
  cpus 1

  input:
  path in_mat

  output:
  path '*.ppsasc.mlt.gv', emit: tree
  path '*.ppsasc.out.txt', emit: mat

  script:
  """
  $params.sw.sasc -i $in_mat -m 50 -n 250 \
    -b $params.FP -a $params.FN \
    -k 0 \
    -d 0 \
    -r $params.resasc.r -S $params.resasc.S -C $params.resasc.C \
    -p $task.cpus \
    -g $params.resasc.g -x \
    -P ${in_mat.baseName}.ppsasc
  """
}

process mk_plot {
  cache false
  conda "./envs/plot.yaml"
  cpus 1

  input:
  path inmat
  path gmat
  path gtree
  path resasctree
  path sasctree
  path pptree
  path infscitetree
  path glog
  path mresasc
  path msasc
  path mppsasc
  path minfscite

  output:
  stdout
  // path "plotlog.txt", emit: log
  // path "*.csv", emit: csv


  script:
  """
  python $params.scripts.mkplot \
    --tground $gtree \
    --tloaders sasc sasc sasc infscite \
    --ttools $resasctree \
    --ttools $sasctree \
    --ttools $pptree \
    --ttools $infscitetree \
    --names reSASC Dollo-k PP infSCITE \
    --mgroundT $gmat \
    --mgroundN $inmat \
    --mtools $mresasc \
    --mtools $msasc \
    --mtools $mppsasc \
    --mtools $minfscite \
    --exp $params.plotname \
    -o . 
  """
}

workflow {
  in_mat = channel.fromPath("./data/${params.expdir}/sim_[0-9]_scs.txt")
  // NOTE: needed only for comparison
  gtree = channel.fromPath("./data/${params.expdir}/sim_[0-9]_truetree.gv") | collect
  gmat = channel.fromPath("./data/${params.expdir}/sim_[0-9]_truescs.txt") | collect
  glog = channel.fromPath("./data/${params.expdir}/sim_[0-9]_log.txt") | collect
  conv = cvt_scite_input(in_mat)
  res_infscite = conv | run_infscite
  tinfscite = res_infscite.tree | view
  tinfscite = res_infscite.tree | trim_infscite
  minfscite = res_infscite.tree | mat_infscite 

  res_resasc = in_mat | run_resasc 
  res_sasc = in_mat | run_sasc
  res_ppsasc = in_mat | run_ppsasc

  rplot = mk_plot( in_mat | collect, gmat, gtree, 
    res_resasc.tree | collect, res_sasc.tree | collect, res_ppsasc.tree | collect, tinfscite | collect, 
    glog, 
    res_resasc.mat | collect, res_sasc.mat | collect, res_ppsasc.mat | collect, minfscite | collect )
  
  // res_resasc.mat | view
  rplot| view
}
