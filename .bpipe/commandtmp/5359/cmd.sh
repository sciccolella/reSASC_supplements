#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/5359.pid

cat .bpipe/commandtmp/5359/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/5359/cmd.exit.tmp
mv .bpipe/commandtmp/5359/cmd.exit.tmp .bpipe/commandtmp/5359/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result