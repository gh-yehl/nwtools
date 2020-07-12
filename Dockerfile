FROM ubuntu:14.04

WORKDIR / 

ADD readme.txt . 

#RUN chmod -R a+rwx /etc
RUN echo "Start installing network tools......................." \
  \
  &&chmod 644 readme.txt && apt-get update \
  \
  #install nc
  && apt-get -y install netcat-traditional && update-alternatives --config nc \
  \
  && apt-get install net-tools \
  \
  #Install ifconfig  
  && apt-get install iputils-ping \
  \
  #Install ping 
  && apt-get install iproute2 \
  \
  #Install ip 
  #Install dig/nslookup
  && apt-get install dnsutils -y \
  \
  #Install telnet client 
  && apt-get install telnet \
  \
  #Install traceroute 
  && apt-get install traceroute \
  \
  #Install tree
  && apt-get install tree \
  && echo "Finished installing network tools......................." \
  
RUN echo "Finished installing network tools...................."

USER 1001
CMD ["sh", "-c", "sleep 86400000"]
