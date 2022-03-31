#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/790.pid

cat .bpipe/commandtmp/790/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/790/cmd.exit.tmp
mv .bpipe/commandtmp/790/cmd.exit.tmp .bpipe/commandtmp/790/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result