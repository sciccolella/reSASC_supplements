#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/367.pid

cat .bpipe/commandtmp/367/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/367/cmd.exit.tmp
mv .bpipe/commandtmp/367/cmd.exit.tmp .bpipe/commandtmp/367/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result