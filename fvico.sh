#!/bin/bash

white="\033[1;37m"
purple="\033[0;35m"
green="\033[1;32m"
cyan="\033[0;36m"

useragent='Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0'

echo -e "$purple
 ####### #     # ###  #####  ####### 
 #       #     #  #  #     # #     # 
 #       #     #  #  #       #     # 
 #####   #     #  #  #       #     # 
 #        #   #   #  #       #     # 
 #         # #    #  #     # #     # 
 #          #    ###  #####  #######
 	@1337kid       v0.4.2         "
echo

if [[ $(which curl) == '' ]]
then
	echo -e "\033[0;31m[ERROR] CURL is not installed"
	exit
fi

if [[ $1 == '' ]]
then
	echo -e '\033[0;36m
USAGE

fvico [url]
fvico https://exampleweb.tld/favicon.ico

'
	exit
fi

echo -e "$green[ URL ] :$cyan $1"
md5=$(curl $1 -A $useragent -s | md5sum | cut -d' ' -f1)
echo -e "$green[ MD5 SUM ] :$cyan $md5"
echo -e "$purple[ INFO ] :$white Checking with OWASP favicon database"
data=$(curl https://wiki.owasp.org/index.php/OWASP_favicon_database -A $useragent -s | grep [a-f0-9]:[a-z] | grep $md5)
IFS=':' read -ra result <<< $data

echo -e "$green[ Framework ] :$cyan ${result[1]}$white"
