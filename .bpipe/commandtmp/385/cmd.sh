#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/385.pid

cat .bpipe/commandtmp/385/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/385/cmd.exit.tmp
mv .bpipe/commandtmp/385/cmd.exit.tmp .bpipe/commandtmp/385/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result