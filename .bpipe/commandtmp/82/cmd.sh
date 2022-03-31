#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/82.pid

cat .bpipe/commandtmp/82/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/82/cmd.exit.tmp
mv .bpipe/commandtmp/82/cmd.exit.tmp .bpipe/commandtmp/82/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result