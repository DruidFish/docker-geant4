FROM geant4-base-dev

MAINTAINER Andrea Dotti (adotti@slac.stanford.edu)
RUN mkdir /usr/local/geant4
RUN mkdir /root/.vnc
COPY passwd /root/.vnc
COPY entry-point.sh /entry-point.sh
ADD binaries/geant4.tgz /usr/local/geant4/

RUN apt -y update
RUN apt install -y vnc4server openbox xterm nano
RUN apt clean

ENTRYPOINT ["/entry-point.sh"]
CMD [ "/bin/bash" ]


