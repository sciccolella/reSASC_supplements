#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/897.pid

cat .bpipe/commandtmp/897/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/897/cmd.exit.tmp
mv .bpipe/commandtmp/897/cmd.exit.tmp .bpipe/commandtmp/897/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result