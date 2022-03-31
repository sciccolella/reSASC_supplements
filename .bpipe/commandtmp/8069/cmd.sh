#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/8069.pid

cat .bpipe/commandtmp/8069/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/8069/cmd.exit.tmp
mv .bpipe/commandtmp/8069/cmd.exit.tmp .bpipe/commandtmp/8069/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result