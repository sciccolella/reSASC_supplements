#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/264.pid

cat .bpipe/commandtmp/264/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/264/cmd.exit.tmp
mv .bpipe/commandtmp/264/cmd.exit.tmp .bpipe/commandtmp/264/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result