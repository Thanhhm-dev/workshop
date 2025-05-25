#!/bin/sh
cd /usr/share/nginx/html
export FIREBASE_TOKEN=$1
firebase deploy --only hosting --project=workshop-441da --token=$FIREBASE_TOKEN