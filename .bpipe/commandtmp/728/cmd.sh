#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/728.pid

cat .bpipe/commandtmp/728/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/728/cmd.exit.tmp
mv .bpipe/commandtmp/728/cmd.exit.tmp .bpipe/commandtmp/728/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result