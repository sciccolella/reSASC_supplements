#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/307.pid

cat .bpipe/commandtmp/307/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/307/cmd.exit.tmp
mv .bpipe/commandtmp/307/cmd.exit.tmp .bpipe/commandtmp/307/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result