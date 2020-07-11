FROM ubuntu:14.04

WORKDIR / ADD readme.txt . RUN chmod 644 readme.txt

RUN apt-get update && apt-get -y install netcat-traditional && update-alternatives --config nc \

#Install ifconfig 
&& apt-get install net-tools \

#Install ping 
&& apt-get install iputils-ping \

#Install ip 
&& apt-get install iproute2 \

#Install dig/nslookup 
&& apt-get install dnsutils -y \

#Install telnet client 
&& apt-get install telnet \

#Install traceroute 
&& apt-get install traceroute \

#Install tree
&& apt-get install tree \

#set priviliges
&& chmod -R 777 /etc

CMD ["sh", "-c", "sleep 86400000"]