#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/126.pid

cat .bpipe/commandtmp/126/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/126/cmd.exit.tmp
mv .bpipe/commandtmp/126/cmd.exit.tmp .bpipe/commandtmp/126/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result