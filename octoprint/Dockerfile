FROM python:3-alpine

RUN apk --no-cache add build-base musl-dev linux-headers socat \
  && pip install OctoPrint

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
