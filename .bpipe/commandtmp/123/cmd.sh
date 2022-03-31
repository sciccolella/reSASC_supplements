#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/123.pid

cat .bpipe/commandtmp/123/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/123/cmd.exit.tmp
mv .bpipe/commandtmp/123/cmd.exit.tmp .bpipe/commandtmp/123/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result