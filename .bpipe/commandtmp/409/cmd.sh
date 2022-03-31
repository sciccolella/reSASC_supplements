#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/409.pid

cat .bpipe/commandtmp/409/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/409/cmd.exit.tmp
mv .bpipe/commandtmp/409/cmd.exit.tmp .bpipe/commandtmp/409/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result