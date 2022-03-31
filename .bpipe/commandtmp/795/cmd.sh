#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/795.pid

cat .bpipe/commandtmp/795/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/795/cmd.exit.tmp
mv .bpipe/commandtmp/795/cmd.exit.tmp .bpipe/commandtmp/795/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result