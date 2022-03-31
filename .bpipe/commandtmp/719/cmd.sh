#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/719.pid

cat .bpipe/commandtmp/719/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/719/cmd.exit.tmp
mv .bpipe/commandtmp/719/cmd.exit.tmp .bpipe/commandtmp/719/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result