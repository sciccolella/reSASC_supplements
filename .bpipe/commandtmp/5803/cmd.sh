#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/5803.pid

cat .bpipe/commandtmp/5803/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/5803/cmd.exit.tmp
mv .bpipe/commandtmp/5803/cmd.exit.tmp .bpipe/commandtmp/5803/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result