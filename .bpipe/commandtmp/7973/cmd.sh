#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/7973.pid

cat .bpipe/commandtmp/7973/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/7973/cmd.exit.tmp
mv .bpipe/commandtmp/7973/cmd.exit.tmp .bpipe/commandtmp/7973/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result