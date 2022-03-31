#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/394.pid

cat .bpipe/commandtmp/394/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/394/cmd.exit.tmp
mv .bpipe/commandtmp/394/cmd.exit.tmp .bpipe/commandtmp/394/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result