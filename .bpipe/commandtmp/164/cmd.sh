#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/164.pid

cat .bpipe/commandtmp/164/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/164/cmd.exit.tmp
mv .bpipe/commandtmp/164/cmd.exit.tmp .bpipe/commandtmp/164/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result