#!/bin/sh

tor -socksport 0 -orport $ORPORT -dirport $DIRPORT -controlport $CTRPORT -exitrelay 0 -exitpolicy "reject *:*" -contactinfo s15a1302@bene.fit.ac.jp -nickname Azunyan1111TorRelay

