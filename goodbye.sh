#!/bin/bash

# Args Process
APP_ID="'$APP_ID'"
USER_NAME="'$USER_NAME'"
ASSET_NAME="'$ASSET_NAME'"
REQUEST_REASON="'$REQUEST_REASON'"
CONNECT_HOST="$CONNECT_HOST"

# credential transfer credential-file
echo $CREDENTIAL | tr -d '\n' >> $GITHUB_ENV

temp=$(echo "podman run -v $GITHUB_ENV:/workspace/cre.cred --rm registry.cn-hangzhou.aliyuncs.com/hos_test/pam-sdk:v1 $APP_ID $USER_NAME $ASSET_NAME $REQUEST_REASON $CONNECT_HOST '/workspace/cre.cred' | grep -v 'Credential filePath'")
success=$(eval $temp)
username=$(echo $success|tr -d '{}'|awk -F '[":,]' '{print $5}')
password=$(echo $success|tr -d '{}'|awk -F '[":,]' '{print $11}')
echo ::add-mask::"abc"
echo ::add-mask::"bcd"
echo uname=$username > $GITHUB_ENV
echo paswd=$password >> $GITHUB_ENV
echo abc > /opt/out.out
