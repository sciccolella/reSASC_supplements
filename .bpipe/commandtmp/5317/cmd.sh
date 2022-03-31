#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/5317.pid

cat .bpipe/commandtmp/5317/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/5317/cmd.exit.tmp
mv .bpipe/commandtmp/5317/cmd.exit.tmp .bpipe/commandtmp/5317/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result