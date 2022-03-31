#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/8397.pid

cat .bpipe/commandtmp/8397/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/8397/cmd.exit.tmp
mv .bpipe/commandtmp/8397/cmd.exit.tmp .bpipe/commandtmp/8397/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result