#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/223.pid

cat .bpipe/commandtmp/223/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/223/cmd.exit.tmp
mv .bpipe/commandtmp/223/cmd.exit.tmp .bpipe/commandtmp/223/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result