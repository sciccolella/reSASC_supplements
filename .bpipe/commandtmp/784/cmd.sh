#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/784.pid

cat .bpipe/commandtmp/784/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/784/cmd.exit.tmp
mv .bpipe/commandtmp/784/cmd.exit.tmp .bpipe/commandtmp/784/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result