#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/819.pid

cat .bpipe/commandtmp/819/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/819/cmd.exit.tmp
mv .bpipe/commandtmp/819/cmd.exit.tmp .bpipe/commandtmp/819/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result