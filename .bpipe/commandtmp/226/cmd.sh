#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/226.pid

cat .bpipe/commandtmp/226/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/226/cmd.exit.tmp
mv .bpipe/commandtmp/226/cmd.exit.tmp .bpipe/commandtmp/226/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result