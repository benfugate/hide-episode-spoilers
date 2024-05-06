FROM tautulli/tautulli

RUN apt-get update
RUN apt-get install -y git gcc cifs-utils && apt-get clean

ADD $PWD/scripts /scripts
RUN pip3 install -r requirements.txt