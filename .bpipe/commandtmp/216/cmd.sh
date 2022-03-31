#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/216.pid

cat .bpipe/commandtmp/216/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/216/cmd.exit.tmp
mv .bpipe/commandtmp/216/cmd.exit.tmp .bpipe/commandtmp/216/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result