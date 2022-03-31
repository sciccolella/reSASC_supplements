#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/225.pid

cat .bpipe/commandtmp/225/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/225/cmd.exit.tmp
mv .bpipe/commandtmp/225/cmd.exit.tmp .bpipe/commandtmp/225/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result