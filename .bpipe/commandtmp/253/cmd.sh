#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/253.pid

cat .bpipe/commandtmp/253/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/253/cmd.exit.tmp
mv .bpipe/commandtmp/253/cmd.exit.tmp .bpipe/commandtmp/253/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result