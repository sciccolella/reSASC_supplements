#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/108.pid

cat .bpipe/commandtmp/108/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/108/cmd.exit.tmp
mv .bpipe/commandtmp/108/cmd.exit.tmp .bpipe/commandtmp/108/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result