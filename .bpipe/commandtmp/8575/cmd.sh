#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/8575.pid

cat .bpipe/commandtmp/8575/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/8575/cmd.exit.tmp
mv .bpipe/commandtmp/8575/cmd.exit.tmp .bpipe/commandtmp/8575/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result