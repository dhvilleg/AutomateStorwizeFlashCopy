#!/usr/bin/ksh
RAIZ=/scripts
LOGDIR=$RAIZ/LOGS
HOSTNAME=`hostname`
FECHA=`date +%Y%m%d%H%M`
LOGFILE=$LOGDIR/$HOSTNAME.FLASH.$FECHA
SSH_CONNECTION="X.X.X.X"
echo "IP: $SSH_CONNECTION" >> $LOGFILE
if [ -f $RAIZ/flashCopyStorwize.sh ]
   then
   echo "script flashcopy.txt exists"
   date >> $LOGFILE
   echo "arranca proceso de borrado de relacion flashcopy" >>$LOGFILE
   ssh superuser@X.X.X.X svctask stopfcconsistgrp 4
   salida1=$?
   cat $LOGFILE
   if [ $salida1 -eq 0 ]
      then
        sleep 60
        ssh superuser@X.X.X.X svctask startfcconsistgrp -prep 4
        salida2=$?
        retcode=$salida2
        sleep 60
        date >> $LOGFILE
        echo "proceso de flashcopy realizado satisfactoriamente"  >>$LOGFILE
   else
        retcode=$salida1
   fi
else
   echo "script flashcopy.txt not exists"
   exit 12
fi
exit $retcode
