#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/801.pid

cat .bpipe/commandtmp/801/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/801/cmd.exit.tmp
mv .bpipe/commandtmp/801/cmd.exit.tmp .bpipe/commandtmp/801/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result