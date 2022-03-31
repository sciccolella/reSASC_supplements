#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/797.pid

cat .bpipe/commandtmp/797/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/797/cmd.exit.tmp
mv .bpipe/commandtmp/797/cmd.exit.tmp .bpipe/commandtmp/797/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result