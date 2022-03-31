#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/214.pid

cat .bpipe/commandtmp/214/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/214/cmd.exit.tmp
mv .bpipe/commandtmp/214/cmd.exit.tmp .bpipe/commandtmp/214/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result