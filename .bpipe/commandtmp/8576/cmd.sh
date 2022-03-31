#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/8576.pid

cat .bpipe/commandtmp/8576/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/8576/cmd.exit.tmp
mv .bpipe/commandtmp/8576/cmd.exit.tmp .bpipe/commandtmp/8576/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result