#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/406.pid

cat .bpipe/commandtmp/406/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/406/cmd.exit.tmp
mv .bpipe/commandtmp/406/cmd.exit.tmp .bpipe/commandtmp/406/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result