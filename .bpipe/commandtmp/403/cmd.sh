#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/403.pid

cat .bpipe/commandtmp/403/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/403/cmd.exit.tmp
mv .bpipe/commandtmp/403/cmd.exit.tmp .bpipe/commandtmp/403/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result