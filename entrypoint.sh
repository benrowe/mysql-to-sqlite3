#!/bin/bash

HOST=$1
DATABASE=$2
USERNAME=$3
PASSWORD=$4
OUTPUT=$5

mysql2sqlite -f /output/export/ -d $DATABASE -u $USERNAME -h $HOST -p $PASSWORD -f $OUTPUT
