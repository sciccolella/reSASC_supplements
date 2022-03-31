#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/840.pid

cat .bpipe/commandtmp/840/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/840/cmd.exit.tmp
mv .bpipe/commandtmp/840/cmd.exit.tmp .bpipe/commandtmp/840/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result