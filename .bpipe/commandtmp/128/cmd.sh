#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/128.pid

cat .bpipe/commandtmp/128/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/128/cmd.exit.tmp
mv .bpipe/commandtmp/128/cmd.exit.tmp .bpipe/commandtmp/128/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result