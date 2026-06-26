#!/bin/sh

HOST=$1
PORT=$2
DATABASE=$3
USERNAME=$4
PASSWORD=$5
OUTPUT=$6

touch /output/$OUTPUT

mysql2sqlite -f /output/$OUTPUT -d $DATABASE -u $USERNAME -h $HOST -P $PORT -p $PASSWORD
