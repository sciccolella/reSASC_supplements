#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/852.pid

cat .bpipe/commandtmp/852/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/852/cmd.exit.tmp
mv .bpipe/commandtmp/852/cmd.exit.tmp .bpipe/commandtmp/852/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result