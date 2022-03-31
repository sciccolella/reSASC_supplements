#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/221.pid

cat .bpipe/commandtmp/221/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/221/cmd.exit.tmp
mv .bpipe/commandtmp/221/cmd.exit.tmp .bpipe/commandtmp/221/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result