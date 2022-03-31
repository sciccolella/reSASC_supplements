#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/220.pid

cat .bpipe/commandtmp/220/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/220/cmd.exit.tmp
mv .bpipe/commandtmp/220/cmd.exit.tmp .bpipe/commandtmp/220/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result