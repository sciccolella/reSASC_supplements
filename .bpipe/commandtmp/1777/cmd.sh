#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/1777.pid

cat .bpipe/commandtmp/1777/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/1777/cmd.exit.tmp
mv .bpipe/commandtmp/1777/cmd.exit.tmp .bpipe/commandtmp/1777/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result