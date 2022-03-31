#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/769.pid

cat .bpipe/commandtmp/769/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/769/cmd.exit.tmp
mv .bpipe/commandtmp/769/cmd.exit.tmp .bpipe/commandtmp/769/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result