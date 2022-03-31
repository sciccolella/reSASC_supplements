#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/843.pid

cat .bpipe/commandtmp/843/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/843/cmd.exit.tmp
mv .bpipe/commandtmp/843/cmd.exit.tmp .bpipe/commandtmp/843/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result