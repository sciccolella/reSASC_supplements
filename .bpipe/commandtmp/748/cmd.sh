#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/748.pid

cat .bpipe/commandtmp/748/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/748/cmd.exit.tmp
mv .bpipe/commandtmp/748/cmd.exit.tmp .bpipe/commandtmp/748/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result