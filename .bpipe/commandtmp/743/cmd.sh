#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/743.pid

cat .bpipe/commandtmp/743/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/743/cmd.exit.tmp
mv .bpipe/commandtmp/743/cmd.exit.tmp .bpipe/commandtmp/743/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result