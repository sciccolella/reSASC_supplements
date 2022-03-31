#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/71.pid

cat .bpipe/commandtmp/71/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/71/cmd.exit.tmp
mv .bpipe/commandtmp/71/cmd.exit.tmp .bpipe/commandtmp/71/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result