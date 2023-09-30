#!/usr/bin/env bash
#



if [ ! -d /usr/local/sbin/no-connect ] ; then  
	mkdir /usr/local/sbin/no-connect
fi
if [ ! -d /var/spool/no-connect ] ; then  
	mkdir /var/spool/no-connect
fi
if [ ! -d /etc/no-connect ] ; then  
	mkdir /etc/no-connect
fi

echo "get the files"
curl -v -z /var/spool/no-connect/install.sh -o /var/spool/no-connect/install.sh https://raw.githubusercontent.com/michal-fre/no-connect/master/install.sh
chmod +x /var/spool/no-connect/install.sh
if [ ! -f /usr/local/sbin/no-connect/install.sh ]; then 
	mv -fu /var/spool/no-connect/install.sh /usr/local/sbin/no-connect/install.sh
fi

curl -v -z /etc/no-connect/ipset-allow.conf -o /etc/no-connect/ipset-allow.conf https://raw.githubusercontent.com/michal-fre/no-connect/master/ipset-allow.conf
curl -v -z /etc/no-connect/ipset-allow-custom.conf -o /etc/no-connect/ipset-allow-custom.conf  https://raw.githubusercontent.com/michal-fre/no-connect/master/ipset-allow-custom.conf
curl -v -z /etc/no-connect/ipset-block.conf -o /etc/no-connect/ipset-block.conf  https://raw.githubusercontent.com/michal-fre/no-connect/master/ipset-block.conf
curl -v -z /etc/no-connect/ipset-block-custom.conf -o /etc/no-connect/ipset-block-custom.conf https://raw.githubusercontent.com/michal-fre/no-connect/master/ipset-block-custom.conf

