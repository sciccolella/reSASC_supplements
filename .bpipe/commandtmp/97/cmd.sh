#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/97.pid

cat .bpipe/commandtmp/97/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/97/cmd.exit.tmp
mv .bpipe/commandtmp/97/cmd.exit.tmp .bpipe/commandtmp/97/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result