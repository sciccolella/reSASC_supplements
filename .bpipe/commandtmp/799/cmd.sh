#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/799.pid

cat .bpipe/commandtmp/799/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/799/cmd.exit.tmp
mv .bpipe/commandtmp/799/cmd.exit.tmp .bpipe/commandtmp/799/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result