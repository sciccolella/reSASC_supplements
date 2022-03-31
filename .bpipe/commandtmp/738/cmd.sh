#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/738.pid

cat .bpipe/commandtmp/738/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/738/cmd.exit.tmp
mv .bpipe/commandtmp/738/cmd.exit.tmp .bpipe/commandtmp/738/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result