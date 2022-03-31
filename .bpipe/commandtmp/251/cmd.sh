#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/251.pid

cat .bpipe/commandtmp/251/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/251/cmd.exit.tmp
mv .bpipe/commandtmp/251/cmd.exit.tmp .bpipe/commandtmp/251/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result