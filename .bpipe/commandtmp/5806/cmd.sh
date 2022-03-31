#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/5806.pid

cat .bpipe/commandtmp/5806/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/5806/cmd.exit.tmp
mv .bpipe/commandtmp/5806/cmd.exit.tmp .bpipe/commandtmp/5806/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result