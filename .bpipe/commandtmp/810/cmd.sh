#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/810.pid

cat .bpipe/commandtmp/810/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/810/cmd.exit.tmp
mv .bpipe/commandtmp/810/cmd.exit.tmp .bpipe/commandtmp/810/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result