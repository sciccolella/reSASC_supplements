#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/238.pid

cat .bpipe/commandtmp/238/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/238/cmd.exit.tmp
mv .bpipe/commandtmp/238/cmd.exit.tmp .bpipe/commandtmp/238/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result