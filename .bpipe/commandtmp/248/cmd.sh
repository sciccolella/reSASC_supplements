#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/248.pid

cat .bpipe/commandtmp/248/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/248/cmd.exit.tmp
mv .bpipe/commandtmp/248/cmd.exit.tmp .bpipe/commandtmp/248/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result