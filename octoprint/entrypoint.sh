#!/bin/sh
set -x
/usr/bin/socat -dd pty,link=/tmp/printer,waitslave,raw,user=root,group=dialout,mode=777 tcp:klipper:3333 &
/usr/local/bin/octoprint serve --iknowwhatimdoing
