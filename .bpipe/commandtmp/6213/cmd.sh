#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/6213.pid

cat .bpipe/commandtmp/6213/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/6213/cmd.exit.tmp
mv .bpipe/commandtmp/6213/cmd.exit.tmp .bpipe/commandtmp/6213/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result