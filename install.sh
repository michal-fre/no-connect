#!/usr/bin/env bash
#

# Check if our requirements are met
function exists() { command -v "$1" >/dev/null 2>&1 ; }
if ! exists curl && exists egrep && exists grep && exists ipset && exists iptables && exists sed && exists sort && exists wc && exists iprange ; then
  echo >&2 "Error: searching PATH fails to find executables among: curl egrep grep ipset iptables sed sort wc"
  exit 1
fi



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
curl -v -z /usr/local/sbin/no-connect/no-connect-run.sh -o /usr/local/sbin/no-connect/no-connect-run.sh https://raw.githubusercontent.com/michal-fre/no-connect/master/no-connect-run.sh 
chmod +x /usr/local/sbin/no-connect/no-connect-run.sh




