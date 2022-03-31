#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/292.pid

cat .bpipe/commandtmp/292/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/292/cmd.exit.tmp
mv .bpipe/commandtmp/292/cmd.exit.tmp .bpipe/commandtmp/292/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result