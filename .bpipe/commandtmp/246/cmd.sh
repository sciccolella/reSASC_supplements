#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/246.pid

cat .bpipe/commandtmp/246/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/246/cmd.exit.tmp
mv .bpipe/commandtmp/246/cmd.exit.tmp .bpipe/commandtmp/246/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result