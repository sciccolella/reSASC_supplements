#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/777.pid

cat .bpipe/commandtmp/777/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/777/cmd.exit.tmp
mv .bpipe/commandtmp/777/cmd.exit.tmp .bpipe/commandtmp/777/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result