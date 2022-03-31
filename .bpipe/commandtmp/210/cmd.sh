#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/210.pid

cat .bpipe/commandtmp/210/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/210/cmd.exit.tmp
mv .bpipe/commandtmp/210/cmd.exit.tmp .bpipe/commandtmp/210/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result