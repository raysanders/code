#!/bin/bash
# Created by Ray Sanders
# this script will re-assign elasticsearch shards
# replace INDEXNAME, X, and NODE with the name of the index with missing/unallocated shards, 
# X with the unallocated shard #, and NODE with the ES node you wish to allocate the shard to. 
curl -X POST     'http://localhost:9200/_cluster/reroute?pretty=true'     -d '{ "commands" : [ { "allocate" : { "index" : "INDEXNAME", "shard" : X , "node" : "NODE", "allow_primary" : 1 }}]}'
