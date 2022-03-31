#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/7328.pid

cat .bpipe/commandtmp/7328/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/7328/cmd.exit.tmp
mv .bpipe/commandtmp/7328/cmd.exit.tmp .bpipe/commandtmp/7328/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result