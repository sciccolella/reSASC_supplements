#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/76.pid

cat .bpipe/commandtmp/76/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/76/cmd.exit.tmp
mv .bpipe/commandtmp/76/cmd.exit.tmp .bpipe/commandtmp/76/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result