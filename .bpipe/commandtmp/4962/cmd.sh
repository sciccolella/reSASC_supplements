#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/4962.pid

cat .bpipe/commandtmp/4962/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/4962/cmd.exit.tmp
mv .bpipe/commandtmp/4962/cmd.exit.tmp .bpipe/commandtmp/4962/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result