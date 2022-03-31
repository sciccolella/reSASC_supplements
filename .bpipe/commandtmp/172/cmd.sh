#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/172.pid

cat .bpipe/commandtmp/172/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/172/cmd.exit.tmp
mv .bpipe/commandtmp/172/cmd.exit.tmp .bpipe/commandtmp/172/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result