#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/278.pid

cat .bpipe/commandtmp/278/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/278/cmd.exit.tmp
mv .bpipe/commandtmp/278/cmd.exit.tmp .bpipe/commandtmp/278/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result