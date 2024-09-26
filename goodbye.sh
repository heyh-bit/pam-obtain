#!/bin/bash
echo result=$(podman run --rm registry.cn-hangzhou.aliyuncs.com/hos_test/shterm-sdk:v8 | grep -v "Credential filePath") >> $GITHUB_OUTPUT
