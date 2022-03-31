#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/7687.pid

cat .bpipe/commandtmp/7687/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/7687/cmd.exit.tmp
mv .bpipe/commandtmp/7687/cmd.exit.tmp .bpipe/commandtmp/7687/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result