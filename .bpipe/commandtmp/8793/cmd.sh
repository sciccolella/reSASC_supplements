#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/8793.pid

cat .bpipe/commandtmp/8793/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/8793/cmd.exit.tmp
mv .bpipe/commandtmp/8793/cmd.exit.tmp .bpipe/commandtmp/8793/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result