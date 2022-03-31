#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/867.pid

cat .bpipe/commandtmp/867/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/867/cmd.exit.tmp
mv .bpipe/commandtmp/867/cmd.exit.tmp .bpipe/commandtmp/867/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result