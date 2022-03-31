#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/767.pid

cat .bpipe/commandtmp/767/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/767/cmd.exit.tmp
mv .bpipe/commandtmp/767/cmd.exit.tmp .bpipe/commandtmp/767/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result