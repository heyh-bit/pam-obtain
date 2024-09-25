#!/bin/bash
echo "abc="abcdefg""
echo "heyh2=123456"
# 使用位置参数
echo "参数1: $1"
echo "参数2: $2"
echo "参数1: $1" > /opt/helloworld.out
echo "参数2: $2" >> /opt/helloworld.out
