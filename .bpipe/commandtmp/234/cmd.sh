#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/234.pid

cat .bpipe/commandtmp/234/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/234/cmd.exit.tmp
mv .bpipe/commandtmp/234/cmd.exit.tmp .bpipe/commandtmp/234/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result