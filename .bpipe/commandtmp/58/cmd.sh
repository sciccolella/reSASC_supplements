#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/58.pid

cat .bpipe/commandtmp/58/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/58/cmd.exit.tmp
mv .bpipe/commandtmp/58/cmd.exit.tmp .bpipe/commandtmp/58/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result