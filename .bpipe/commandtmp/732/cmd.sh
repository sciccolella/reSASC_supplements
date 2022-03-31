#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/732.pid

cat .bpipe/commandtmp/732/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/732/cmd.exit.tmp
mv .bpipe/commandtmp/732/cmd.exit.tmp .bpipe/commandtmp/732/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result