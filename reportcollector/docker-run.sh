#!/bin/sh

docker run -itd --rm --name rc -p 18080:8080 \
    -v `pwd`/conf:/castis/bin/tomcat/conf/reportCollector \
    -v ~/app/log/reportcollector:/castis/log/reportcollector_log \
    -v ~/app/data/reportcollector:/DATA/report \
    reportcollector:1.0.7.QR2
exit 0

if [ $# -ne 2 ];then
    echo "Usage:$0 <version> <port>"
    exit 1
fi

docker run -itd --rm --name rc -p $2:8080 \
    -v `pwd`/conf:/castis/bin/tomcat/conf/reportCollector \
    -v ~/app/log/reportcollector:/castis/log/reportcollector_log \
    -v ~/app/data/reportcollector:/DATA/report \
    reportcollector:$1
