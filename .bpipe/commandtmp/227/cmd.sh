#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/227.pid

cat .bpipe/commandtmp/227/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/227/cmd.exit.tmp
mv .bpipe/commandtmp/227/cmd.exit.tmp .bpipe/commandtmp/227/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result