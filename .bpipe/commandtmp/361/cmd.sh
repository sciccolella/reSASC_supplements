#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/361.pid

cat .bpipe/commandtmp/361/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/361/cmd.exit.tmp
mv .bpipe/commandtmp/361/cmd.exit.tmp .bpipe/commandtmp/361/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result