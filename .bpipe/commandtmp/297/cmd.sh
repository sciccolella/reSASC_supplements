#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/297.pid

cat .bpipe/commandtmp/297/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/297/cmd.exit.tmp
mv .bpipe/commandtmp/297/cmd.exit.tmp .bpipe/commandtmp/297/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result