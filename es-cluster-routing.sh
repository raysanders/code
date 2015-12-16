#!/bin/bash
# Created by Ray Sanders
# this script will force es to behave better in regards to cluster allocation.
curl -XPUT localhost:9200/_cluster/settings -d '{"transient": {"cluster.routing.allocation.allow_rebalance" :"'always'"}}'
curl -XPUT localhost:9200/_cluster/settings -d '{"transient": {"cluster.routing.allocation.cluster_concurrent_rebalance" :"'10'"}}'
curl -XPUT localhost:9200/_cluster/settings -d '{"transient": {"cluster.routing.allocation.cluster_concurrent_recoveries" :"'10'"}}'
curl -XPUT localhost:9200/_cluster/settings -d '{"transient": {"cluster.routing.allocation.enable" :"'all'"}}'
