FROM solr:latest

USER root
ADD nice2_index /opt/solr/server/solr/mycores/nice2_index
ADD nice2-enterprisesearch-impl-1.0-SNAPSHOT.jar /opt/solr/server/solr/lib
RUN chgrp -R 0 /opt/solr \
  && chmod -R g+rwX /opt/solr 
