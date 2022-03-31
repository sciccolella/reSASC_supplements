#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/781.pid

cat .bpipe/commandtmp/781/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/781/cmd.exit.tmp
mv .bpipe/commandtmp/781/cmd.exit.tmp .bpipe/commandtmp/781/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result