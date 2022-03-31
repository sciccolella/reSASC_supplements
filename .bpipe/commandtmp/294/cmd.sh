#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/294.pid

cat .bpipe/commandtmp/294/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/294/cmd.exit.tmp
mv .bpipe/commandtmp/294/cmd.exit.tmp .bpipe/commandtmp/294/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result