#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/762.pid

cat .bpipe/commandtmp/762/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/762/cmd.exit.tmp
mv .bpipe/commandtmp/762/cmd.exit.tmp .bpipe/commandtmp/762/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result