#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/281.pid

cat .bpipe/commandtmp/281/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/281/cmd.exit.tmp
mv .bpipe/commandtmp/281/cmd.exit.tmp .bpipe/commandtmp/281/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result