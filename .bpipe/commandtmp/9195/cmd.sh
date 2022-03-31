#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/9195.pid

cat .bpipe/commandtmp/9195/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/9195/cmd.exit.tmp
mv .bpipe/commandtmp/9195/cmd.exit.tmp .bpipe/commandtmp/9195/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result