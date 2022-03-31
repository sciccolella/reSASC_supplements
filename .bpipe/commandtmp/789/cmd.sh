#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/789.pid

cat .bpipe/commandtmp/789/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/789/cmd.exit.tmp
mv .bpipe/commandtmp/789/cmd.exit.tmp .bpipe/commandtmp/789/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result