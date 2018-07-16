#!/bin/sh

sleep (expr (date -j -f "%Y-%m-%d %H:%M:%S" "2018-7-17 01:05:00" "+%s") - (date +%s))
tor -socksport 0 -orport $ORPORT -dirport $DIRPORT -controlport $CTRPORT -exitrelay 0 -exitpolicy "reject *:*" -contactinfo s15a1302@bene.fit.ac.jp -nickname $NAME -NodeFamily "0691545ABEAF91A04DFC33B615C1AEACB32FF527"
