#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/858.pid

cat .bpipe/commandtmp/858/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/858/cmd.exit.tmp
mv .bpipe/commandtmp/858/cmd.exit.tmp .bpipe/commandtmp/858/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result