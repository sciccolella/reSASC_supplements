#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/740.pid

cat .bpipe/commandtmp/740/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/740/cmd.exit.tmp
mv .bpipe/commandtmp/740/cmd.exit.tmp .bpipe/commandtmp/740/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result