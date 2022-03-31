#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/388.pid

cat .bpipe/commandtmp/388/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/388/cmd.exit.tmp
mv .bpipe/commandtmp/388/cmd.exit.tmp .bpipe/commandtmp/388/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result