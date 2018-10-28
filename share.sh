#!/bin/bash
nginx & 
while true
do
( df -h | grep -i exnpestrgdevopsdata ) || {	mount -t cifs //exnpestrgdevopsdata.file.core.windows.net/vol-npe-dam-content-data /usr/share/nginx/html/ -o vers=3.0,username=exnpestrgdevopsdata,password=vKIHzPKFe6ubu9scpRJBHELc5Y2To5tZF8CavCWEp7zPAHH93bkPyZm9SpAmru7J3btt1GbdBnGeRYOCHJJWyQ==,dir_mode=0777,file_mode=0777,sec=ntlmssp; }
sleep 400
done

