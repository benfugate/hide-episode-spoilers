FROM tautulli/tautulli:latest@sha256:670e68dd9efca538d508b0c5b222b7e41bd70a22dce0cb822941ea55c457f5d1

RUN apt-get update
RUN apt-get install -y git gcc cifs-utils && apt-get clean

ADD scripts /scripts
COPY requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt