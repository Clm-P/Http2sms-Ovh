#!/bin/bash
# Clement Provenier 24.01.2016
BASE_URL="https://www.ovh.com/cgi-bin/sms/http2sms.cgi"
ACCOUNT="Nickandle ovh"
LOGIN="Login-ovh"
PASSWORD="Your passwd here"
FROM="Contact ovh"
TO="%2B33666ZZZZZZ" #+33666ZZZZZZ
TO1="%2B33666ZZZZZZ"
TO2="%2B33666ZZZZZZ"

request="$BASE_URL?account=$ACCOUNT&login=$LOGIN&password=$PASSWORD&from=$FROM&to=$TO,$TO1,$TO2&message=$1&noStop=1"

echo $request
GET "$request"

exit 0;
