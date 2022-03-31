#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/5478.pid

cat .bpipe/commandtmp/5478/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/5478/cmd.exit.tmp
mv .bpipe/commandtmp/5478/cmd.exit.tmp .bpipe/commandtmp/5478/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result