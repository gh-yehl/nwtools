FROM ubuntu:14.04

WORKDIR / 

ADD readme.txt . 

#install nc
#Install ifconfig 
#Install ping 
#Install ip 
#Install dig/nslookup 
#Install telnet client 
#Install traceroute 
#Install tree
#set priviliges
USER root
RUN echo "Start installing network tools......................."
RUN chmod 644 readme.txt && apt-get update && apt-get -y install netcat-traditional && update-alternatives --config nc && apt-get install net-tools
RUN apt-get install iputils-ping && apt-get install iproute2 && apt-get install dnsutils -y && apt-get install telnet && apt-get install traceroute
RUN apt-get install tree && 
RUN echo "Finished installing network tools...................."
RUN chmod -R 777 /etc

USER 1001
CMD ["sh", "-c", "sleep 86400000"]
