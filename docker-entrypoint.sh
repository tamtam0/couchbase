#!/bin/bash
# Create directories where couchbase stores its data
cd /opt/couchbase
mkdir -p var/lib/couchbase \
         var/lib/couchbase/config \
         var/lib/couchbase/data \
         var/lib/couchbase/stats \
         var/lib/couchbase/logs \
         var/lib/moxi
exec "/opt/couchbase/bin/couchbase-server" "-- -kernel global_enable_tracing false -noinput"
