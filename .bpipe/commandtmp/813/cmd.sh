#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/813.pid

cat .bpipe/commandtmp/813/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/813/cmd.exit.tmp
mv .bpipe/commandtmp/813/cmd.exit.tmp .bpipe/commandtmp/813/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result