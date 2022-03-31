#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/8635.pid

cat .bpipe/commandtmp/8635/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/8635/cmd.exit.tmp
mv .bpipe/commandtmp/8635/cmd.exit.tmp .bpipe/commandtmp/8635/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result