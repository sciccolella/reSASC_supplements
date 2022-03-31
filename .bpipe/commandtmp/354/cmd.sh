#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/354.pid

cat .bpipe/commandtmp/354/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/354/cmd.exit.tmp
mv .bpipe/commandtmp/354/cmd.exit.tmp .bpipe/commandtmp/354/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result