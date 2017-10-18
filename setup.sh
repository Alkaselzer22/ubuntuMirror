#!/bin/bash

echo "Getting root privilages"
sudo -s

echo "Installing dependencies"
apt-get install -y rsync screen

echo "Creating script directory (/etc/ubuntuMirror)"
mkdir /etc/ubuntuMirror
mkdir /etc/ubuntuMirror/archive.ubuntu.com
mkdir /etc/ubuntuMirror/archive.ubuntu.com/dists
cp -r /etc/ubuntuMirror/archive.ubuntu.com /etc/ubuntuMirror/security.ubuntu.com

echo -n "Install default 64k version instead of default? [Y/N]:"
read -n 1 noDefault
if [${noDefault^^} == "Y"]; then
  cp ubuntuMirror-64k.sh /etc/ubuntuMirror/ubuntuMirror.sh
else
  cp ubuntuMirror.sh /etc/ubuntuMirror/ubuntuMirror.sh
fi
cp run.sh /etc/ubuntuMirror/run.sh

echo "Creating crontab jobs"
crontab -l > tcrontab
echo "@reboot /etc/ubuntuMirror/run.sh" >> tcrontab
echo "@daily /etc/ubuntuMirror/ubuntuMirror.sh" >> tcrontab
crontab tcrontab

echo "Finishing & cleaning up"
chmod 775 /etc/ubuntuMirror/*.sh
rm tcrontab
/etc/ubuntuMirror/run.sh

echo "FINISHED SETUP"
