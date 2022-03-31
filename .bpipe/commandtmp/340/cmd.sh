#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/340.pid

cat .bpipe/commandtmp/340/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/340/cmd.exit.tmp
mv .bpipe/commandtmp/340/cmd.exit.tmp .bpipe/commandtmp/340/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result