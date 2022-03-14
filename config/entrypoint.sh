mount //192.168.29.127/media/ /config/media/ -t cifs -o iocharset=utf8,credentials=/config/.smbcredentials,file_mode=0777,dir_mode=0777,uid=1000,gid=1000,cache=strict
/app/start.sh
tail -f /dev/null
