#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/56.pid

cat .bpipe/commandtmp/56/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/56/cmd.exit.tmp
mv .bpipe/commandtmp/56/cmd.exit.tmp .bpipe/commandtmp/56/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result