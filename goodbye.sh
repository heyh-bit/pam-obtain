#!/bin/bash
echo "参数1: $APP_ID"
echo "参数2: $USER_NAME"
echo "参数3: $ASSET_NAME"
echo "参数4: $REQUEST_REASON"
echo "参数5: $CONNECT_HOST"
echo "参数6: $CREDENTIAL_FILE"
echo result=$(podman run --rm registry.cn-hangzhou.aliyuncs.com/hos_test/shterm-sdk:v8 $APP_ID $USER_NAME $ASSET_NAME" '$REQUEST_REASON' $CONNECT_HOST '/workspace/cre.cred'" | grep -v 'Credential filePath')
