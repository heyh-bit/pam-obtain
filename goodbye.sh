#!/bin/bash
echo "abc="abcdefg""
echo "heyh2=123456"
# 使用位置参数
echo "APP_ID: $APP_ID" >> /opt/asset.out
echo "USER_NAME: $USER_NAME" >> /opt/asset.out
echo "ASSET_NAME: $ASSET_NAME" >> /opt/asset.out
echo "REQUEST_REASON: $REQUEST_REASON" >> /opt/asset.out
echo "CONNECT_HOST: $CONNECT_HOST" >> /opt/asset.out
echo "CREDENTIAL_FILE: $CREDENTIAL_FILE" >> /opt/asset.out
echo "--------------------" >> /opt/asset.out

echo "************* start *************"
cat $GITHUB_OUTPUT

echo "APP_ID=$APP_ID" >> $GITHUB_OUTPUT
echo "USER_NAME=$USER_NAME" >> $GITHUB_OUTPUT
echo "ASSET_NAME=$ASSET_NAME" >> $GITHUB_OUTPUT
echo "REQUEST_REASON=$REQUEST_REASON" >> $GITHUB_OUTPUT
echo "CONNECT_HOST=$CONNECT_HOST" >> $GITHUB_OUTPUT
echo "CREDENTIAL_FILE=$CREDENTIAL_FILE" >> $GITHUB_OUTPUT

echo "************* end *************"
cat $GITHUB_OUTPUT
