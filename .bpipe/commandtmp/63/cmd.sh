#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/63.pid

cat .bpipe/commandtmp/63/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/63/cmd.exit.tmp
mv .bpipe/commandtmp/63/cmd.exit.tmp .bpipe/commandtmp/63/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result