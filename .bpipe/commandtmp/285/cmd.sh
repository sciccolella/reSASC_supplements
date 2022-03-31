#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/285.pid

cat .bpipe/commandtmp/285/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/285/cmd.exit.tmp
mv .bpipe/commandtmp/285/cmd.exit.tmp .bpipe/commandtmp/285/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result