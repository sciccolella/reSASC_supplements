#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/130.pid

cat .bpipe/commandtmp/130/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/130/cmd.exit.tmp
mv .bpipe/commandtmp/130/cmd.exit.tmp .bpipe/commandtmp/130/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result