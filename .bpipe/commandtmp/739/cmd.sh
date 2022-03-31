#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/739.pid

cat .bpipe/commandtmp/739/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/739/cmd.exit.tmp
mv .bpipe/commandtmp/739/cmd.exit.tmp .bpipe/commandtmp/739/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result