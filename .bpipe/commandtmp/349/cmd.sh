#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/349.pid

cat .bpipe/commandtmp/349/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/349/cmd.exit.tmp
mv .bpipe/commandtmp/349/cmd.exit.tmp .bpipe/commandtmp/349/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result