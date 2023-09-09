#!/bin/bash

useragent='Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0'

md5=$(curl $1 -A $useragent -s | md5sum)
data=$(curl https://wiki.owasp.org/index.php/OWASP_favicon_database -A $useragent -s | grep [a-f0-9]:[a-z] | grep $md5)
IFS=':' read -ra result <<< $data
echo MD5 SUM   : ${result[0]}
echo Framework : ${result[1]}
