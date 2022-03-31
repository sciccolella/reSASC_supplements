#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/106.pid

cat .bpipe/commandtmp/106/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/106/cmd.exit.tmp
mv .bpipe/commandtmp/106/cmd.exit.tmp .bpipe/commandtmp/106/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result