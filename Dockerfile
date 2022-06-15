FROM tautulli/tautulli

RUN apt-get update
RUN apt-get install -y git gcc cifs-utils
ADD $PWD/config/scripts/JBOPS /config/scripts/JBOPS
RUN cd /config/scripts/JBOPS
RUN pip3 install -r requirements.txt

ARG media_mount_location
RUN sed "2i\mount $media_mount_location /config/media/ -t cifs -o iocharset=utf8,credentials=/config/.smbcredentials,file_mode=0777,dir_mode=0777,uid=1000,gid=1000,cache=strict" /app/start.sh > /app/start1.sh
RUN chmod --reference=/app/start.sh /app/start1.sh
RUN mv /app/start1.sh /app/start.sh
