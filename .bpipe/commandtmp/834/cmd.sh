#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/834.pid

cat .bpipe/commandtmp/834/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/834/cmd.exit.tmp
mv .bpipe/commandtmp/834/cmd.exit.tmp .bpipe/commandtmp/834/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result