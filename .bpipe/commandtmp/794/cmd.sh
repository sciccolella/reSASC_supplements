#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/794.pid

cat .bpipe/commandtmp/794/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/794/cmd.exit.tmp
mv .bpipe/commandtmp/794/cmd.exit.tmp .bpipe/commandtmp/794/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result