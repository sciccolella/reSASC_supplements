#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/6156.pid

cat .bpipe/commandtmp/6156/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/6156/cmd.exit.tmp
mv .bpipe/commandtmp/6156/cmd.exit.tmp .bpipe/commandtmp/6156/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result