#!/bin/bash

set -x

export DOLLAR='$'
envsubst < /tmp/nginx-kube.conf > /etc/nginx/nginx.conf
nginx -g 'daemon off;'
