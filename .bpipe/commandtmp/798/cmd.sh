#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/798.pid

cat .bpipe/commandtmp/798/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/798/cmd.exit.tmp
mv .bpipe/commandtmp/798/cmd.exit.tmp .bpipe/commandtmp/798/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result