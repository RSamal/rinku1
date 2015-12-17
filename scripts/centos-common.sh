#!/bin/bash

# This is a provision file for CentOs 6.5

# Updated Patched
yum update -y --exclude=kernel
# Tool install
yum install -y wget nano screen nc telnet unzip git

#
