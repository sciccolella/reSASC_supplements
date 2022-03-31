#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/59.pid

cat .bpipe/commandtmp/59/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/59/cmd.exit.tmp
mv .bpipe/commandtmp/59/cmd.exit.tmp .bpipe/commandtmp/59/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result