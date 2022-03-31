#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/900.pid

cat .bpipe/commandtmp/900/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/900/cmd.exit.tmp
mv .bpipe/commandtmp/900/cmd.exit.tmp .bpipe/commandtmp/900/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result