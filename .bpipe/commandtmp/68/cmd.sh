#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/68.pid

cat .bpipe/commandtmp/68/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/68/cmd.exit.tmp
mv .bpipe/commandtmp/68/cmd.exit.tmp .bpipe/commandtmp/68/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result