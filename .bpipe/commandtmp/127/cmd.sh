#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/127.pid

cat .bpipe/commandtmp/127/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/127/cmd.exit.tmp
mv .bpipe/commandtmp/127/cmd.exit.tmp .bpipe/commandtmp/127/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result