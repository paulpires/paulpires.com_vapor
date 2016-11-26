#!/bin/bash
export PATH=/swift-3.0/usr/bin:"${PATH}"
touch ~/log_vapor_nohup
touch ~/error_vapor_nohup
# nohup vapor run serve --env=production > ~/log_vapor_nohup 2> ~/error_vapor_nohup &
nohup .build/release/App --env=production > ~/log_vapor_nohup 2> ~/error_vapor_nohup &

