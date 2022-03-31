#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/726.pid

cat .bpipe/commandtmp/726/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/726/cmd.exit.tmp
mv .bpipe/commandtmp/726/cmd.exit.tmp .bpipe/commandtmp/726/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result