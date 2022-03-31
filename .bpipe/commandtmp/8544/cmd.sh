#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/8544.pid

cat .bpipe/commandtmp/8544/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/8544/cmd.exit.tmp
mv .bpipe/commandtmp/8544/cmd.exit.tmp .bpipe/commandtmp/8544/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result