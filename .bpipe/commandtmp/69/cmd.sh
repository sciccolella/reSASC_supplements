#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/69.pid

cat .bpipe/commandtmp/69/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/69/cmd.exit.tmp
mv .bpipe/commandtmp/69/cmd.exit.tmp .bpipe/commandtmp/69/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result