#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/885.pid

cat .bpipe/commandtmp/885/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/885/cmd.exit.tmp
mv .bpipe/commandtmp/885/cmd.exit.tmp .bpipe/commandtmp/885/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result