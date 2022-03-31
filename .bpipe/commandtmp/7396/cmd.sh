#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/7396.pid

cat .bpipe/commandtmp/7396/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/7396/cmd.exit.tmp
mv .bpipe/commandtmp/7396/cmd.exit.tmp .bpipe/commandtmp/7396/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result