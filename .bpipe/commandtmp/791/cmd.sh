#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/791.pid

cat .bpipe/commandtmp/791/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/791/cmd.exit.tmp
mv .bpipe/commandtmp/791/cmd.exit.tmp .bpipe/commandtmp/791/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result