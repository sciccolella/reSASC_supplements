#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/254.pid

cat .bpipe/commandtmp/254/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/254/cmd.exit.tmp
mv .bpipe/commandtmp/254/cmd.exit.tmp .bpipe/commandtmp/254/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result