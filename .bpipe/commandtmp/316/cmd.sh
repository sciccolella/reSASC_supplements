#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/316.pid

cat .bpipe/commandtmp/316/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/316/cmd.exit.tmp
mv .bpipe/commandtmp/316/cmd.exit.tmp .bpipe/commandtmp/316/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result