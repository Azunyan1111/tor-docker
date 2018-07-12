FROM alpine
RUN apk --update add tor

ARG ORPORT
ARG DIRPORT
ARG CTRPORT

#EXPOSE $ORPORT $DIRPORT $CTRPORT

COPY startup.sh /
CMD ["/startup.sh"]
