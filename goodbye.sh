#!/bin/bash
APP_ID="'$APP_ID'"
USER_NAME="'$USER_NAME'"
ASSET_NAME="'$ASSET_NAME'"
REQUEST_REASON="'$REQUEST_REASON'"
CONNECT_HOST="'$CONNECT_HOST'"
CREDENTIAL_FILE="'$CREDENTIAL_FILE'"
echo $APP_ID > /opt/args.out
echo $USER_NAME >> /opt/args.out
echo $ASSET_NAME >> /opt/args.out
echo $REQUEST_REASON >> /opt/args.out
echo $CONNECT_HOST >> /opt/args.out
echo $CREDENTIAL_FILE >>/opt/args.out
echo "podman run --rm registry.cn-hangzhou.aliyuncs.com/hos_test/shterm-sdk:v8 $APP_ID $USER_NAME $ASSET_NAME $REQUEST_REASON $CONNECT_HOST $CREDENTIAL_FILE | grep -v 'Credential filePath'" >> /opt/args.out
echo result=$(podman run --rm registry.cn-hangzhou.aliyuncs.com/hos_test/shterm-sdk:v8 $APP_ID $USER_NAME $ASSET_NAME $REQUEST_REASON $CONNECT_HOST $CREDENTIAL_FILE | grep -v 'Credential filePath')
