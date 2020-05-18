# Zabbix Send By XMPP Script
A script to send notifies via xmpp client. This script is perfect for zabbix or another monitoring software.

## Required  
* sendxmpp (https://packages.debian.org/de/sid/sendxmpp)
```bash
apt-get install sendxmpp
```
## Use in Zabbix
1. Upload *sendxmpp.sh* in */usr/lib/zabbix/alertscripts*
2. Set up the XMPP configuration data
```bash
nano sendxmpp.sh
chmod 600 sendxmpp.sh
```
3. Add a new media type in Zabbix.
![Create new media type](https://wiki.profoxi.de/wp-content/uploads/2020/05/zabbix-media-xmpp-screens/01.png)

4. Configuration the new media type.
Navigate in Zabbix *Adminstration -> Media Types*, create a new media type with Type set to *script*, Script set to *sendxmpp.sh* and three parameters: {ALERT.SENDTO}, {ALERT.SUBJECT}, {ALERT.MESSAGE}.

![Create new media type](https://wiki.profoxi.de/wp-content/uploads/2020/05/zabbix-media-xmpp-screens/02.png)