#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/328.pid

cat .bpipe/commandtmp/328/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/328/cmd.exit.tmp
mv .bpipe/commandtmp/328/cmd.exit.tmp .bpipe/commandtmp/328/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result