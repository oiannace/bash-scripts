#!/bin/bash

df -h | grep -e '^/dev/disk1s*' | awk '{print $1, $5}'
