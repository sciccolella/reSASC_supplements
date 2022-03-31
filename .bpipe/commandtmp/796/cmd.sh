#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/796.pid

cat .bpipe/commandtmp/796/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/796/cmd.exit.tmp
mv .bpipe/commandtmp/796/cmd.exit.tmp .bpipe/commandtmp/796/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result