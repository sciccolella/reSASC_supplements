#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/873.pid

cat .bpipe/commandtmp/873/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/873/cmd.exit.tmp
mv .bpipe/commandtmp/873/cmd.exit.tmp .bpipe/commandtmp/873/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result