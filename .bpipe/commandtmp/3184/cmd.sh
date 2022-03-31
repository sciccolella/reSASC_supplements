#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/3184.pid

cat .bpipe/commandtmp/3184/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/3184/cmd.exit.tmp
mv .bpipe/commandtmp/3184/cmd.exit.tmp .bpipe/commandtmp/3184/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result