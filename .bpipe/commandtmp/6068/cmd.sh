#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/6068.pid

cat .bpipe/commandtmp/6068/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/6068/cmd.exit.tmp
mv .bpipe/commandtmp/6068/cmd.exit.tmp .bpipe/commandtmp/6068/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result