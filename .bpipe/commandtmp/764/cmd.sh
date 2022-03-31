#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/764.pid

cat .bpipe/commandtmp/764/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/764/cmd.exit.tmp
mv .bpipe/commandtmp/764/cmd.exit.tmp .bpipe/commandtmp/764/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result