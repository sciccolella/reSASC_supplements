#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/773.pid

cat .bpipe/commandtmp/773/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/773/cmd.exit.tmp
mv .bpipe/commandtmp/773/cmd.exit.tmp .bpipe/commandtmp/773/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result