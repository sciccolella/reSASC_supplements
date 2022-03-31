#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/894.pid

cat .bpipe/commandtmp/894/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/894/cmd.exit.tmp
mv .bpipe/commandtmp/894/cmd.exit.tmp .bpipe/commandtmp/894/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result