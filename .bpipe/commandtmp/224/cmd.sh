#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/224.pid

cat .bpipe/commandtmp/224/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/224/cmd.exit.tmp
mv .bpipe/commandtmp/224/cmd.exit.tmp .bpipe/commandtmp/224/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result