#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/3586.pid

cat .bpipe/commandtmp/3586/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/3586/cmd.exit.tmp
mv .bpipe/commandtmp/3586/cmd.exit.tmp .bpipe/commandtmp/3586/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result