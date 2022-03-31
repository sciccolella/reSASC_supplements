#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/244.pid

cat .bpipe/commandtmp/244/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/244/cmd.exit.tmp
mv .bpipe/commandtmp/244/cmd.exit.tmp .bpipe/commandtmp/244/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result