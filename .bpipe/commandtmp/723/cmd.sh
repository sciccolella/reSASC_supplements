#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/723.pid

cat .bpipe/commandtmp/723/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/723/cmd.exit.tmp
mv .bpipe/commandtmp/723/cmd.exit.tmp .bpipe/commandtmp/723/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result