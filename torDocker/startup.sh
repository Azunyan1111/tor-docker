#!/bin/sh

#sleep $(expr $(date --date='2018-07-17 01:48:00' +%s) - $(date +%s))
#echo "DO!"
tor -socksport 0 -orport $ORPORT -dirport $DIRPORT -controlport $CTRPORT -exitrelay 0 -exitpolicy "reject *:*" -contactinfo s15a1302@bene.fit.ac.jp -nickname $NAME -NodeFamily "0691545ABEAF91A04DFC33B615C1AEACB32FF527"
#echo "END! FUCK"