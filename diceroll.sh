#!/bin/bash
#####################################
#
# diceroll.sh - place this file in your crontab to execute periodically. 
# this assumes the host running graphite/statsd is on the same host the script runs as 
# if not, simply replace localhost with the full hostname or IP of the graphite server. 
#
# 
# Ray Sanders - rjs.devops@raymondjsanders.com
#
#
###################################
n=$RANDOM
d20=$((RANDOM%20+0))
d10=$((RANDOM%10+0))
d8=$((RANDOM%8+0))
d6=$((RANDOM%6+0))
d4=$((RANDOM%4+0))
echo "local.random.diceroll_d20 $d20 `date +%s`" | /usr/bin/nc localhost 2003
echo "local.random.diceroll_d10 $d10 `date +%s`" | /usr/bin/nc localhost 2003
echo "local.random.diceroll_d8 $d8 `date +%s`" | /usr/bin/nc localhost 2003
echo "local.random.diceroll_d6 $d6 `date +%s`" | /usr/bin/nc localhost 2003
echo "local.random.diceroll_d4 $d4 `date +%s`" | /usr/bin/nc localhost 2003
echo $d20
echo $d10
echo $d8
echo $d6
echo $d4
