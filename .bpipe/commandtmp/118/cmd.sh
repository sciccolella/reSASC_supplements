#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/118.pid

cat .bpipe/commandtmp/118/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/118/cmd.exit.tmp
mv .bpipe/commandtmp/118/cmd.exit.tmp .bpipe/commandtmp/118/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result