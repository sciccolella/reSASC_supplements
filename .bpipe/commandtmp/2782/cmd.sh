#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/2782.pid

cat .bpipe/commandtmp/2782/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/2782/cmd.exit.tmp
mv .bpipe/commandtmp/2782/cmd.exit.tmp .bpipe/commandtmp/2782/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result