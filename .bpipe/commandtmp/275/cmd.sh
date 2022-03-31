#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/275.pid

cat .bpipe/commandtmp/275/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/275/cmd.exit.tmp
mv .bpipe/commandtmp/275/cmd.exit.tmp .bpipe/commandtmp/275/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result