FROM tautulli/tautulli

RUN apt-get update
RUN apt-get install -y git gcc cifs-utils && apt-get clean

ADD $PWD/config/scripts/JBOPS /scripts/JBOPS
RUN pip3 install -r /scripts/JBOPS/requirements.txt