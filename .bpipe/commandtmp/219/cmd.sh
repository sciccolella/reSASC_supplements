#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/219.pid

cat .bpipe/commandtmp/219/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/219/cmd.exit.tmp
mv .bpipe/commandtmp/219/cmd.exit.tmp .bpipe/commandtmp/219/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result