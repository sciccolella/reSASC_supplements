#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/98.pid

cat .bpipe/commandtmp/98/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/98/cmd.exit.tmp
mv .bpipe/commandtmp/98/cmd.exit.tmp .bpipe/commandtmp/98/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result