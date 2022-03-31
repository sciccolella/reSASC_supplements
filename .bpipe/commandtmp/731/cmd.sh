#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/731.pid

cat .bpipe/commandtmp/731/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/731/cmd.exit.tmp
mv .bpipe/commandtmp/731/cmd.exit.tmp .bpipe/commandtmp/731/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result