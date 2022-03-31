#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/751.pid

cat .bpipe/commandtmp/751/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/751/cmd.exit.tmp
mv .bpipe/commandtmp/751/cmd.exit.tmp .bpipe/commandtmp/751/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result