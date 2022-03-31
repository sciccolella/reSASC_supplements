#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/379.pid

cat .bpipe/commandtmp/379/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/379/cmd.exit.tmp
mv .bpipe/commandtmp/379/cmd.exit.tmp .bpipe/commandtmp/379/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result