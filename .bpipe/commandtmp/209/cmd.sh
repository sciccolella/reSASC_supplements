#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/209.pid

cat .bpipe/commandtmp/209/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/209/cmd.exit.tmp
mv .bpipe/commandtmp/209/cmd.exit.tmp .bpipe/commandtmp/209/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result