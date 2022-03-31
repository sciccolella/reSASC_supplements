#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/215.pid

cat .bpipe/commandtmp/215/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/215/cmd.exit.tmp
mv .bpipe/commandtmp/215/cmd.exit.tmp .bpipe/commandtmp/215/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result