#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/7943.pid

cat .bpipe/commandtmp/7943/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/7943/cmd.exit.tmp
mv .bpipe/commandtmp/7943/cmd.exit.tmp .bpipe/commandtmp/7943/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result