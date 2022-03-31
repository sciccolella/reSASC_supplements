#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/72.pid

cat .bpipe/commandtmp/72/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/72/cmd.exit.tmp
mv .bpipe/commandtmp/72/cmd.exit.tmp .bpipe/commandtmp/72/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result