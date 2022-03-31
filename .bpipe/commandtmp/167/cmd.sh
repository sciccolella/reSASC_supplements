#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/167.pid

cat .bpipe/commandtmp/167/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/167/cmd.exit.tmp
mv .bpipe/commandtmp/167/cmd.exit.tmp .bpipe/commandtmp/167/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result