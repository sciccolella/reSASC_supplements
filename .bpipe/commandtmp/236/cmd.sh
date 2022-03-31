#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/236.pid

cat .bpipe/commandtmp/236/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/236/cmd.exit.tmp
mv .bpipe/commandtmp/236/cmd.exit.tmp .bpipe/commandtmp/236/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result