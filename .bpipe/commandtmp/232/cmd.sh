#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/232.pid

cat .bpipe/commandtmp/232/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/232/cmd.exit.tmp
mv .bpipe/commandtmp/232/cmd.exit.tmp .bpipe/commandtmp/232/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result