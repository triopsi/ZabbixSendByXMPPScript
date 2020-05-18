#!/bin/bash
# Send by XMPP
# Requeried: sendxmpp

# Please set up your configuration
zabbixUser=""
zabbixHost=""
ZabbixPassword=""

####################### MAIN ############################
echo "$3" | /usr/bin/sendxmpp -u $zabbixUser -j $zabbixHost -p $ZabbixPassword -s "$2" -i "$1" -t