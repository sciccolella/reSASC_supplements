#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/331.pid

cat .bpipe/commandtmp/331/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/331/cmd.exit.tmp
mv .bpipe/commandtmp/331/cmd.exit.tmp .bpipe/commandtmp/331/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result