#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/776.pid

cat .bpipe/commandtmp/776/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/776/cmd.exit.tmp
mv .bpipe/commandtmp/776/cmd.exit.tmp .bpipe/commandtmp/776/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result