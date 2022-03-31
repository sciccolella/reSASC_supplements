#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/5158.pid

cat .bpipe/commandtmp/5158/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/5158/cmd.exit.tmp
mv .bpipe/commandtmp/5158/cmd.exit.tmp .bpipe/commandtmp/5158/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result