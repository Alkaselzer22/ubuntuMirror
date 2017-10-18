#!/bin/bash

echo "Starting Mirror web service"
screen -dmS webservice bash -c "/usr/bin/python2.7 -m SimpleHTTPServer 80; exec bash"
./ubuntuMirror.sh
