#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/903.pid

cat .bpipe/commandtmp/903/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/903/cmd.exit.tmp
mv .bpipe/commandtmp/903/cmd.exit.tmp .bpipe/commandtmp/903/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result