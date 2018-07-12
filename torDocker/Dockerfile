FROM alpine
RUN apk --update add tor

ARG ORPORT
ARG DIRPORT
ARG CTRPORT
ARG NAME

COPY startup.sh /
CMD ["/startup.sh"]
