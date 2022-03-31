#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/117.pid

cat .bpipe/commandtmp/117/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/117/cmd.exit.tmp
mv .bpipe/commandtmp/117/cmd.exit.tmp .bpipe/commandtmp/117/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result