#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/876.pid

cat .bpipe/commandtmp/876/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/876/cmd.exit.tmp
mv .bpipe/commandtmp/876/cmd.exit.tmp .bpipe/commandtmp/876/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result