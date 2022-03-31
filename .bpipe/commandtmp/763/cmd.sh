#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/763.pid

cat .bpipe/commandtmp/763/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/763/cmd.exit.tmp
mv .bpipe/commandtmp/763/cmd.exit.tmp .bpipe/commandtmp/763/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result