#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/122.pid

cat .bpipe/commandtmp/122/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/122/cmd.exit.tmp
mv .bpipe/commandtmp/122/cmd.exit.tmp .bpipe/commandtmp/122/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result