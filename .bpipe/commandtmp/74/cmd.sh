#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/74.pid

cat .bpipe/commandtmp/74/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/74/cmd.exit.tmp
mv .bpipe/commandtmp/74/cmd.exit.tmp .bpipe/commandtmp/74/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result