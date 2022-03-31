#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/62.pid

cat .bpipe/commandtmp/62/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/62/cmd.exit.tmp
mv .bpipe/commandtmp/62/cmd.exit.tmp .bpipe/commandtmp/62/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result