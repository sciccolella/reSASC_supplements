#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/304.pid

cat .bpipe/commandtmp/304/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/304/cmd.exit.tmp
mv .bpipe/commandtmp/304/cmd.exit.tmp .bpipe/commandtmp/304/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result