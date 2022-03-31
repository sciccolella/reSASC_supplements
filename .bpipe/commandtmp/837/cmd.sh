#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/837.pid

cat .bpipe/commandtmp/837/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/837/cmd.exit.tmp
mv .bpipe/commandtmp/837/cmd.exit.tmp .bpipe/commandtmp/837/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result