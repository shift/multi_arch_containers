FROM python:2-alpine

RUN apk --no-cache add git gcc-avr avr-libc build-base libffi-dev ser2net \
  && git clone https://github.com/KevinOConnor/klipper \
  && cd klipper \
  && make \
  && pip install -r scripts/klippy-requirements.txt \
  && cd /klipper/klippy/chelper/ \
  && gcc -Wall -g -O2 -shared -fPIC -flto -fwhole-program -fno-use-linker-plugin -o c_helper.so *.c \
  && chown 65534:65534 -R /klipper \
  && echo "3333:raw:600:/tmp/printer:115200 8DATABITS NONE 1STOPBIT" > /etc/ser2net.conf \
  && addgroup nobody dialout \
  && addgroup nobody tty

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]]
