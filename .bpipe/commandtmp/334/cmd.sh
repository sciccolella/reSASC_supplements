#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/334.pid

cat .bpipe/commandtmp/334/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/334/cmd.exit.tmp
mv .bpipe/commandtmp/334/cmd.exit.tmp .bpipe/commandtmp/334/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result