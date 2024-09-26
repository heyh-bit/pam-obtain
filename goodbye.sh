#!/bin/bash
echo "GITHUB_OUTPUT Before"
cat $GITHUB_OUTPUT > /opt/Before.out
echo result=$(podman run --rm registry.cn-hangzhou.aliyuncs.com/hos_test/shterm-sdk:v8 | grep -v "Credential filePath") >> $GITHUB_OUTPUT
cat $GITHUB_OUTPUT > /opt/After.out
echo "GITHUB_OUTPUT After"
