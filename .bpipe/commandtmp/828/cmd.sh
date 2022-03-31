#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/828.pid

cat .bpipe/commandtmp/828/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/828/cmd.exit.tmp
mv .bpipe/commandtmp/828/cmd.exit.tmp .bpipe/commandtmp/828/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result