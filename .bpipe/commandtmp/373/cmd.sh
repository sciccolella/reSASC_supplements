#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/373.pid

cat .bpipe/commandtmp/373/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/373/cmd.exit.tmp
mv .bpipe/commandtmp/373/cmd.exit.tmp .bpipe/commandtmp/373/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result