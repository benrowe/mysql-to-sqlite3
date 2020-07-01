#!/bin/sh

HOST=$1
DATABASE=$2
USERNAME=$3
PASSWORD=$4
OUTPUT=$5

touch /output/$OUTPUT

mysql2sqlite -f /output/$OUTPUT -d $DATABASE -u $USERNAME -h $HOST -p $PASSWORD
