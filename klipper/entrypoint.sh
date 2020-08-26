#!/bin/sh
set -x
/usr/sbin/ser2net -u
/usr/local/bin/python /klipper/klippy/klippy.py /opt/printer.cfg
