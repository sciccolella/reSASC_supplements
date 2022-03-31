#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/8042.pid

cat .bpipe/commandtmp/8042/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/8042/cmd.exit.tmp
mv .bpipe/commandtmp/8042/cmd.exit.tmp .bpipe/commandtmp/8042/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result