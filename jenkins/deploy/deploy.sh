#!/bin/bash

echo maven > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /prod /tmp/.auth ubuntu@13.127.148.3:/tmp/.auth
scp -i /prod ./jenkins/deploy/publish ubuntu@13.127.148.3:/tmp/publish
ssh -i /prod ubuntu@13.127.148.3 "/tmp/publish"
