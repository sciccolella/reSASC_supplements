#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/212.pid

cat .bpipe/commandtmp/212/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/212/cmd.exit.tmp
mv .bpipe/commandtmp/212/cmd.exit.tmp .bpipe/commandtmp/212/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result