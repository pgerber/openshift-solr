# solr
[![Build Status](https://travis-ci.org/pgerber/openshift-solr.svg?branch=master)](https://travis-ci.org/pgerber/openshift-solr)

## Intrinsics

### .trashcan

In our Openshift environment a persistent volume is mounted from a Gluster cluster. The mount contains a `.trashcan` directory
and Solr won't have access to it. Unfortunately, Solr can't deal with that. To get it working anyway, the volume is mounted
at `/persist` and the data directory is a subdirectory of it (`/persist/index_data`). This way `/persist/.trashcan` is no longer
in Solr's data directory.
