#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/49.pid

cat .bpipe/commandtmp/49/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/49/cmd.exit.tmp
mv .bpipe/commandtmp/49/cmd.exit.tmp .bpipe/commandtmp/49/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result