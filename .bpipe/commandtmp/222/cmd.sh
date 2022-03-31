#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/222.pid

cat .bpipe/commandtmp/222/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/222/cmd.exit.tmp
mv .bpipe/commandtmp/222/cmd.exit.tmp .bpipe/commandtmp/222/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result