#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/780.pid

cat .bpipe/commandtmp/780/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/780/cmd.exit.tmp
mv .bpipe/commandtmp/780/cmd.exit.tmp .bpipe/commandtmp/780/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result