#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/284.pid

cat .bpipe/commandtmp/284/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/284/cmd.exit.tmp
mv .bpipe/commandtmp/284/cmd.exit.tmp .bpipe/commandtmp/284/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result