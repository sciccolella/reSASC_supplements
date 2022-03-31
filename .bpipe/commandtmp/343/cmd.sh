#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/343.pid

cat .bpipe/commandtmp/343/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/343/cmd.exit.tmp
mv .bpipe/commandtmp/343/cmd.exit.tmp .bpipe/commandtmp/343/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result