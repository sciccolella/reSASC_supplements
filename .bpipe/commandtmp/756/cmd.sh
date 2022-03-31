#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/756.pid

cat .bpipe/commandtmp/756/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/756/cmd.exit.tmp
mv .bpipe/commandtmp/756/cmd.exit.tmp .bpipe/commandtmp/756/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result