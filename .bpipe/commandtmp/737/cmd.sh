#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/737.pid

cat .bpipe/commandtmp/737/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/737/cmd.exit.tmp
mv .bpipe/commandtmp/737/cmd.exit.tmp .bpipe/commandtmp/737/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result