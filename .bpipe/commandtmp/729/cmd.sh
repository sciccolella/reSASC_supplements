#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/729.pid

cat .bpipe/commandtmp/729/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/729/cmd.exit.tmp
mv .bpipe/commandtmp/729/cmd.exit.tmp .bpipe/commandtmp/729/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result