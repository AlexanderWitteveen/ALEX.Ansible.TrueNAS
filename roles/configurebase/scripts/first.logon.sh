#!/bin/bash

ipaddress=$1
password=$2

expect -f $(dirname "$0")/first.logon.expect "$ipaddress" "$password"
if [[ "$?" != "0" ]]; then 
    echo "**** Error: Expect failed"
fi
