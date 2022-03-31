#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/882.pid

cat .bpipe/commandtmp/882/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/882/cmd.exit.tmp
mv .bpipe/commandtmp/882/cmd.exit.tmp .bpipe/commandtmp/882/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result