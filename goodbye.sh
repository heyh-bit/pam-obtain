#!/bin/bash

# Args Process
APP_ID="'$APP_ID'"
USER_NAME="'$USER_NAME'"
ASSET_NAME="'$ASSET_NAME'"
REQUEST_REASON="github action pam-obtain"
CONNECT_HOST="$CONNECT_HOST"
ENCRYPTION_PASSPHRASE="$ENCRYPTION_PASSPHRASE"

# credential transfer credential-file
echo $CREDENTIAL | tr -d '\n' >> $GITHUB_ENV

temp=$(echo "podman run -v $GITHUB_ENV:/workspace/cre.cred --rm registry.cn-hangzhou.aliyuncs.com/hos_test/pam-sdk:v1 $APP_ID $USER_NAME $ASSET_NAME 'github action pam-obtain' $CONNECT_HOST '/workspace/cre.cred' | grep -v 'Credential filePath'")
success=$(eval $temp)
username=$(echo $success|tr -d '{}'|awk -F '[":,]' '{print $5}')
password=$(echo $success|tr -d '{}'|awk -F '[":,]' '{print $11}')
ENCRYPTED_PASSWORD=$(openssl enc -aes-256-cbc -pass pass:$ENCRYPTION_PASSPHRASE -pbkdf2 -base64 <<< "$password")
echo username=$username
echo password=$ENCRYPTED_PASSWORD
