#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/735.pid

cat .bpipe/commandtmp/735/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/735/cmd.exit.tmp
mv .bpipe/commandtmp/735/cmd.exit.tmp .bpipe/commandtmp/735/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result