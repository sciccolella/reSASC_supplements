#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/766.pid

cat .bpipe/commandtmp/766/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/766/cmd.exit.tmp
mv .bpipe/commandtmp/766/cmd.exit.tmp .bpipe/commandtmp/766/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result