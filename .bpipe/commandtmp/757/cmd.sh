#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/757.pid

cat .bpipe/commandtmp/757/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/757/cmd.exit.tmp
mv .bpipe/commandtmp/757/cmd.exit.tmp .bpipe/commandtmp/757/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result