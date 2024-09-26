#!/bin/bash
# Args Process
APP_ID="'$APP_ID'"
USER_NAME="'$USER_NAME'"
ASSET_NAME="'$ASSET_NAME'"
REQUEST_REASON="'$REQUEST_REASON'"
CONNECT_HOST="'$CONNECT_HOST'"
CREDENTIAL_FILE="'$CREDENTIAL_FILE'"
temp=$(echo "podman run --rm registry.cn-hangzhou.aliyuncs.com/hos_test/pam-sdk:v1 $APP_ID $USER_NAME $ASSET_NAME $REQUEST_REASON $CONNECT_HOST $CREDENTIAL_FILE | grep -v 'Credential filePath'")
echo $temp > /opt/successssss.out
success=$(eval $temp)
username=$(echo $success|tr -d '{}'|awk -F '[":,]' '{print $5}')
password=$(echo $success|tr -d '{}'|awk -F '[":,]' '{print $11}')
echo username=$username
echo password=$password
