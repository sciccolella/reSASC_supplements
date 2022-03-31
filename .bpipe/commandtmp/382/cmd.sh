#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/382.pid

cat .bpipe/commandtmp/382/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/382/cmd.exit.tmp
mv .bpipe/commandtmp/382/cmd.exit.tmp .bpipe/commandtmp/382/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result