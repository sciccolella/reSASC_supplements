#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/298.pid

cat .bpipe/commandtmp/298/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/298/cmd.exit.tmp
mv .bpipe/commandtmp/298/cmd.exit.tmp .bpipe/commandtmp/298/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result