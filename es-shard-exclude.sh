#!/bin/bash
# Created by Ray Sanders
# this script will exclude elasticsearch nodes
curl -XPUT localhost:9200/_cluster/settings -d '{"transient": {"cluster.routing.allocation.exclude._id" :"'$1'"}}'
