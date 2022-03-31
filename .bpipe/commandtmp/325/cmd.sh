#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/325.pid

cat .bpipe/commandtmp/325/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/325/cmd.exit.tmp
mv .bpipe/commandtmp/325/cmd.exit.tmp .bpipe/commandtmp/325/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result