#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/846.pid

cat .bpipe/commandtmp/846/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/846/cmd.exit.tmp
mv .bpipe/commandtmp/846/cmd.exit.tmp .bpipe/commandtmp/846/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result