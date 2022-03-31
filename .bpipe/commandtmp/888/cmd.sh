#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/888.pid

cat .bpipe/commandtmp/888/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/888/cmd.exit.tmp
mv .bpipe/commandtmp/888/cmd.exit.tmp .bpipe/commandtmp/888/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result