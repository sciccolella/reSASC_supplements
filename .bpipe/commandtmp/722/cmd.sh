#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/722.pid

cat .bpipe/commandtmp/722/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/722/cmd.exit.tmp
mv .bpipe/commandtmp/722/cmd.exit.tmp .bpipe/commandtmp/722/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result