#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/8644.pid

cat .bpipe/commandtmp/8644/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/8644/cmd.exit.tmp
mv .bpipe/commandtmp/8644/cmd.exit.tmp .bpipe/commandtmp/8644/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result