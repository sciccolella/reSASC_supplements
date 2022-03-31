#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/125.pid

cat .bpipe/commandtmp/125/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/125/cmd.exit.tmp
mv .bpipe/commandtmp/125/cmd.exit.tmp .bpipe/commandtmp/125/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result