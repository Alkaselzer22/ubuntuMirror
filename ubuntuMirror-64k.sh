#!/bin/bash

M_PATH="/etc/ubuntuMirror"

echo "Starting/Restarting ubuntu/dists/xenial"
screen -S xenial-main -X quit
screen -dmS xenial-main rsync -a --progress --bwlimit=64 rsync://archive.ubuntu.com/ubuntu/dists/xenial ${M_PATH}/archive.ubuntu.com/ubuntu/dists/

echo "Starting/Restarting ubuntu/dists/xenial-backports"
screen -S xenial-backports -X quit
screen -dmS xenial-backports rsync -a --progress --bwlimit=64 rsync://archive.ubuntu.com/ubuntu/dists/xenial-backports ${M_PATH}/archive.ubuntu.com/ubuntu/dists/

echo "Starting/Restarting ubuntu/dists/xenial-proposed"
screen -S xenial-proposed -X quit
screen -dmS xenial-proposed rsync -a --progress --bwlimit=64 rsync://archive.ubuntu.com/ubuntu/dists/xenial-proposed ${M_PATH}/archive.ubuntu.com/ubuntu/dists/

echo "Starting/Restarting ubuntu/dists/xenial-security"
screen -S xenial-security -X quit
screen -dmS xenial-security rsync -a --progress --bwlimit=64 rsync://archive.ubuntu.com/ubuntu/dists/xenial-security ${M_PATH}/archive.ubuntu.com/ubuntu/dists/

echo "Starting/Restarting ubuntu/dists/xenial-updates"
screen -S xenial-updates -X quit
screen -dmS xenial-updates rsync -a --progress --bwlimit=64 rsync://archive.ubuntu.com/ubuntu/dists/xenial-updates ${M_PATH}/archive.ubuntu.com/ubuntu/dists/

echo "Starting/Restarting ubuntu/pool"
screen -S pool -X quit
screen -dmS pool rsync -a --progress --bwlimit=64 rsync://archive.ubuntu.com/ubuntu/pool ${M_PATH}/archive.ubuntu.com/ubuntu/

echo "Starting/Restarting ubuntu/indices"
screen -S indices -X quit
screen -dmS indices rsync -a --progress --bwlimit=64 rsync://archive.ubuntu.com/ubuntu/indices ${M_PATH}/archive.ubuntu.com/ubuntu/

echo "Starting/Restarting security xenial"
screen -S security-xenial-main -X quit
screen -dmS security-xenial-main rsync -a --progress --bwlimit=64 rsync://security.ubuntu.com/ubuntu/dists/xenial ${M_PATH}/security.ubuntu.com/ubuntu/dists/

echo "Starting/Restarting security xenial-backports"
screen -S security-xenial-backports -X quit
screen -dmS security-xenial-backports rsync -a --progress --bwlimit=64 rsync://security.ubuntu.com/ubuntu/dists/xenial-backports ${M_PATH}/security.ubuntu.com/ubuntu/dists/

echo "Starting/Restarting security xenial-proposed"
screen -S security-xenial-proposed -X quit
screen -dmS security-xenial-proposed rsync -a --progress --bwlimit=64 rsync://security.ubuntu.com/ubuntu/dists/xenial-proposed ${M_PATH}/security.ubuntu.com/ubuntu/dists/

echo "Starting/Restarting security xenial-security"
screen -S security-xenial-security -X quit
screen -dmS security-xenial-security rsync -a --progress --bwlimit=64 rsync://security.ubuntu.com/ubuntu/dists/xenial-security ${M_PATH}/security.ubuntu.com/ubuntu/dists/

echo "Starting/Restarting security xenial-updates"
screen -S security-xenial-updates -X quit
screen -dmS security-xenial-updates rsync -a --progress --bwlimit=64 rsync://security.ubuntu.com/ubuntu/dists/xenial-updates ${M_PATH}/security.ubuntu.com/ubuntu/dists/

echo "Starting/Restarting security pool"
screen -S security-pool -X quit
screen -dmS security-pool rsync -a --progress --bwlimit=64 rsync://security.ubuntu.com/ubuntu/pool ${M_PATH}/security.ubuntu.com/ubuntu/

echo "Starting/Restarting security indices"
screen -S security-indices -X quit
screen -dmS security-indices rsync -a --progress --bwlimit=64 rsync://security.ubuntu.com/ubuntu/indices ${M_PATH}/security.ubuntu.com/ubuntu/

screen -ls
