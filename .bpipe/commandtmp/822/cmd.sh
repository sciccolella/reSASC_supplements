#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/822.pid

cat .bpipe/commandtmp/822/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/822/cmd.exit.tmp
mv .bpipe/commandtmp/822/cmd.exit.tmp .bpipe/commandtmp/822/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result