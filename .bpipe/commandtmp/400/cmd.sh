#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/400.pid

cat .bpipe/commandtmp/400/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/400/cmd.exit.tmp
mv .bpipe/commandtmp/400/cmd.exit.tmp .bpipe/commandtmp/400/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result