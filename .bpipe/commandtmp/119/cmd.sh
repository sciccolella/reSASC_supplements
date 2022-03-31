#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/119.pid

cat .bpipe/commandtmp/119/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/119/cmd.exit.tmp
mv .bpipe/commandtmp/119/cmd.exit.tmp .bpipe/commandtmp/119/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result