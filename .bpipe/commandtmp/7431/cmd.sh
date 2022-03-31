#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/7431.pid

cat .bpipe/commandtmp/7431/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/7431/cmd.exit.tmp
mv .bpipe/commandtmp/7431/cmd.exit.tmp .bpipe/commandtmp/7431/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result