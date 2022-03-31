#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/849.pid

cat .bpipe/commandtmp/849/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/849/cmd.exit.tmp
mv .bpipe/commandtmp/849/cmd.exit.tmp .bpipe/commandtmp/849/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result