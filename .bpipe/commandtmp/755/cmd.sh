#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/755.pid

cat .bpipe/commandtmp/755/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/755/cmd.exit.tmp
mv .bpipe/commandtmp/755/cmd.exit.tmp .bpipe/commandtmp/755/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result