#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/274.pid

cat .bpipe/commandtmp/274/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/274/cmd.exit.tmp
mv .bpipe/commandtmp/274/cmd.exit.tmp .bpipe/commandtmp/274/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result