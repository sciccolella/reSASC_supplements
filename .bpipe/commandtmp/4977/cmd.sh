#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/4977.pid

cat .bpipe/commandtmp/4977/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/4977/cmd.exit.tmp
mv .bpipe/commandtmp/4977/cmd.exit.tmp .bpipe/commandtmp/4977/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result