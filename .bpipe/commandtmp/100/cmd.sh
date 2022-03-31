#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/100.pid

cat .bpipe/commandtmp/100/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/100/cmd.exit.tmp
mv .bpipe/commandtmp/100/cmd.exit.tmp .bpipe/commandtmp/100/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result