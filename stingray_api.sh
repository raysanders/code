#!/bin/bash
zxtm=localhost
/opt/local/stingray/zxtm/bin/zcli << EOF
stats trafficmanager
exit
EOF
