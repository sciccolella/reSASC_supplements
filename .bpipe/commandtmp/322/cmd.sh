#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/322.pid

cat .bpipe/commandtmp/322/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/322/cmd.exit.tmp
mv .bpipe/commandtmp/322/cmd.exit.tmp .bpipe/commandtmp/322/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result