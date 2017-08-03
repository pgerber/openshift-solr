#!/bin/sh

# mkdir -p /persist/index_data/index/
# ln -sfn /opt/solr/write.lock /persist/index_data/index/write.lock

# entrypoint script shipped with Solr
exec docker-entrypoint.sh "$@"
