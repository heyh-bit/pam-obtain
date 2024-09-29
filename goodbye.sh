#!/bin/bash
# Args Process
APP_ID="'$APP_ID'"
USER_NAME="'$USER_NAME'"
ASSET_NAME="'$ASSET_NAME'"
REQUEST_REASON="'$REQUEST_REASON'"
CONNECT_HOST="'$CONNECT_HOST'"
CREDENTIAL="'$CREDENTIAL'"
cat $GITHUB_ENV > /opt/before.out
echo $GITHUB_ENV >> /opt/before.out
echo $CREDENTIAL >> /opt/before.out
echo "aaa" >> $GITHUB_ENV
cat $GITHUB_ENV > /opt/after.out
echo $GITHUB_ENV >> /opt/after.out
echo $CREDENTIAL >> /opt/after.out
temp=$(echo "podman run --rm registry.cn-hangzhou.aliyuncs.com/hos_test/pam-sdk:v1 $APP_ID $USER_NAME $ASSET_NAME $REQUEST_REASON $CONNECT_HOST $CREDENTIAL | grep -v 'Credential filePath'")
success=$(eval $temp)
username=$(echo $success|tr -d '{}'|awk -F '[":,]' '{print $5}')
password=$(echo $success|tr -d '{}'|awk -F '[":,]' '{print $11}')
echo uname=$username
echo paswd=$password
