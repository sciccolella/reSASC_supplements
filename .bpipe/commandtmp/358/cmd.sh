#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/358.pid

cat .bpipe/commandtmp/358/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/358/cmd.exit.tmp
mv .bpipe/commandtmp/358/cmd.exit.tmp .bpipe/commandtmp/358/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result