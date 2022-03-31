#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/310.pid

cat .bpipe/commandtmp/310/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/310/cmd.exit.tmp
mv .bpipe/commandtmp/310/cmd.exit.tmp .bpipe/commandtmp/310/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result