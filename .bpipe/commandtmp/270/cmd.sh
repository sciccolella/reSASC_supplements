#!/bin/sh

#echo ">>>>>>>>>>>>>>>> ENTERING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"





echo $$ > .bpipe/commands/270.pid

cat .bpipe/commandtmp/270/cmd_run.sh | setsid bash -e 


result=$?
echo -n $result > .bpipe/commandtmp/270/cmd.exit.tmp
mv .bpipe/commandtmp/270/cmd.exit.tmp .bpipe/commandtmp/270/cmd.exit



#echo ">>>>>>>>>>>>>>>> EXITING COMMAND TEMPLATE <<<<<<<<<<<<<<<<<<<<<<"

exit $result