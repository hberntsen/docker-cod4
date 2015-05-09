FROM centos:7
MAINTAINER hberntsen

#from http://cod4-linux-server.webs.com/
RUN yum -y install glibc.i686 libgcc.i686 libstdc++.i686 zlib.i686

RUN useradd cod4
ADD cod4 /home/cod4/
RUN chown -R cod4:cod4 /home/cod4

USER cod4
WORKDIR /home/cod4
ENTRYPOINT /home/cod4/cod4_lnxded +exec server.cfg +map_rotate
