#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/760.pid

cat .bpipe/commandtmp/760/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/760/cmd.exit.tmp
mv .bpipe/commandtmp/760/cmd.exit.tmp .bpipe/commandtmp/760/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result