#!/bin/bash
echo "abc="abcdefg"" >> $GITHUB_OUTPUT
echo "abc="abcdefg"" >> /opt/a.out
echo $GITHUB_OUTPUT > /opt/b.out
cat $GITHUB_OUTPUT > /opt/c.out
