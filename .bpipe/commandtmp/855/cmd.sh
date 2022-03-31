#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/855.pid

cat .bpipe/commandtmp/855/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/855/cmd.exit.tmp
mv .bpipe/commandtmp/855/cmd.exit.tmp .bpipe/commandtmp/855/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result