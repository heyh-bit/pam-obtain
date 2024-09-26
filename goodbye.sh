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
