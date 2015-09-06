#!/bin/sh

cd /app/
cat test.conf.template | while read line; do eval "echo `echo $line`"; done > test.conf
/usr/local/bundle/bin/fluentd -c test.conf -l debug.log
