#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/744.pid

cat .bpipe/commandtmp/744/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/744/cmd.exit.tmp
mv .bpipe/commandtmp/744/cmd.exit.tmp .bpipe/commandtmp/744/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result