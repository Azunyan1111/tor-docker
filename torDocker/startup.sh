#!/bin/sh

tor -socksport 0 -orport $ORPORT -dirport $DIRPORT -controlport $CTRPORT -exitrelay 0 -exitpolicy "reject *:*" -contactinfo s15a1302@bene.fit.ac.jp -nickname $NAME -NodeFamily "F4366FD5FB4EBEDE8E73F4E04A08DCB8451A6FE9"

