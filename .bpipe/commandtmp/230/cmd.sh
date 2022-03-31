#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/230.pid

cat .bpipe/commandtmp/230/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/230/cmd.exit.tmp
mv .bpipe/commandtmp/230/cmd.exit.tmp .bpipe/commandtmp/230/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result