#!/bin/bash
cd /root/scripts
curr_conn=$(./stingray_api.sh | cut -d \, -f 26)
bits_in=$(./stingray_api.sh | cut -d \, -f 23)
bits_out=$(./stingray_api.sh | cut -d \, -f 24)
echo "stingray.current_connections $curr_conn `date +%s`" | /usr/bin/nc graphite_host 2003
echo "stingray.bits_in $bits_in `date +%s`" | /usr/bin/nc graphite_host 2003
echo "stingray.bits_out $bits_out `date +%s`" | /usr/bin/nc graphite_host 2003
