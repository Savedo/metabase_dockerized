#!/usr/bin/env bash

#consul-template -consul=172.16.5.162 -template="/nginx_templates/default.ctmpl:/etc/nginx/conf.d/default.conf:service nginx reload"
consul-template -template="/nginx_templates/default.ctmpl:/etc/nginx/conf.d/default.conf:service nginx reload"
