#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/75.pid

cat .bpipe/commandtmp/75/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/75/cmd.exit.tmp
mv .bpipe/commandtmp/75/cmd.exit.tmp .bpipe/commandtmp/75/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result