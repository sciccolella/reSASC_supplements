#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/228.pid

cat .bpipe/commandtmp/228/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/228/cmd.exit.tmp
mv .bpipe/commandtmp/228/cmd.exit.tmp .bpipe/commandtmp/228/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result