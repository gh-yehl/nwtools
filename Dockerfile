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
RUN chmod 644 readme.txt && \
apt-get update && apt-get -y install netcat-traditional && update-alternatives --config nc \
&& apt-get install net-tools \
&& apt-get install iputils-ping \
&& apt-get install iproute2 \
&& apt-get install dnsutils -y \
&& apt-get install telnet \
&& apt-get install traceroute \
&& apt-get install tree \
&& chmod -R 777 /etc

CMD ["sh", "-c", "sleep 86400000"]
