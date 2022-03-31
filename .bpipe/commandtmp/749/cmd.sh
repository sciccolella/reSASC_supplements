#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/749.pid

cat .bpipe/commandtmp/749/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/749/cmd.exit.tmp
mv .bpipe/commandtmp/749/cmd.exit.tmp .bpipe/commandtmp/749/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result