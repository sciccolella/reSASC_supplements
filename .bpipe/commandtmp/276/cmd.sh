#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/276.pid

cat .bpipe/commandtmp/276/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/276/cmd.exit.tmp
mv .bpipe/commandtmp/276/cmd.exit.tmp .bpipe/commandtmp/276/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result