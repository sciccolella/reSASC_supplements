#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/55.pid

cat .bpipe/commandtmp/55/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/55/cmd.exit.tmp
mv .bpipe/commandtmp/55/cmd.exit.tmp .bpipe/commandtmp/55/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result