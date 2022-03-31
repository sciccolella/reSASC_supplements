#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/4849.pid

cat .bpipe/commandtmp/4849/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/4849/cmd.exit.tmp
mv .bpipe/commandtmp/4849/cmd.exit.tmp .bpipe/commandtmp/4849/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result