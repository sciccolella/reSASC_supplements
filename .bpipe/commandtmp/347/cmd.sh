#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/347.pid

cat .bpipe/commandtmp/347/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/347/cmd.exit.tmp
mv .bpipe/commandtmp/347/cmd.exit.tmp .bpipe/commandtmp/347/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result