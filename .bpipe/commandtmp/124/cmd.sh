#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/124.pid

cat .bpipe/commandtmp/124/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/124/cmd.exit.tmp
mv .bpipe/commandtmp/124/cmd.exit.tmp .bpipe/commandtmp/124/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result