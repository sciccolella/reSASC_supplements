#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/800.pid

cat .bpipe/commandtmp/800/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/800/cmd.exit.tmp
mv .bpipe/commandtmp/800/cmd.exit.tmp .bpipe/commandtmp/800/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result