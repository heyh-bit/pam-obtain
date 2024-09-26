#!/bin/bash
REQUEST_REASON="'$REQUEST_REASON'"
echo result=$(podman run --rm registry.cn-hangzhou.aliyuncs.com/hos_test/shterm-sdk:v8 $APP_ID $USER_NAME $ASSET_NAME $REQUEST_REASON $CONNECT_HOST "'/workspace/cre.cred'" | grep -v 'Credential filePath')
