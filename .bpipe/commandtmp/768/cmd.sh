#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/768.pid

cat .bpipe/commandtmp/768/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/768/cmd.exit.tmp
mv .bpipe/commandtmp/768/cmd.exit.tmp .bpipe/commandtmp/768/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result