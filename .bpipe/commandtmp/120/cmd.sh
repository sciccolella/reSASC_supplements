#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/120.pid

cat .bpipe/commandtmp/120/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/120/cmd.exit.tmp
mv .bpipe/commandtmp/120/cmd.exit.tmp .bpipe/commandtmp/120/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result