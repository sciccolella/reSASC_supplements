#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/788.pid

cat .bpipe/commandtmp/788/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/788/cmd.exit.tmp
mv .bpipe/commandtmp/788/cmd.exit.tmp .bpipe/commandtmp/788/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result