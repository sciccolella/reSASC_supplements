#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/733.pid

cat .bpipe/commandtmp/733/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/733/cmd.exit.tmp
mv .bpipe/commandtmp/733/cmd.exit.tmp .bpipe/commandtmp/733/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result