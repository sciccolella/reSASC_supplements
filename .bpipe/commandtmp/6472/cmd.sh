#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/6472.pid

cat .bpipe/commandtmp/6472/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/6472/cmd.exit.tmp
mv .bpipe/commandtmp/6472/cmd.exit.tmp .bpipe/commandtmp/6472/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result