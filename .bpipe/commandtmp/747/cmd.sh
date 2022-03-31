#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/747.pid

cat .bpipe/commandtmp/747/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/747/cmd.exit.tmp
mv .bpipe/commandtmp/747/cmd.exit.tmp .bpipe/commandtmp/747/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result