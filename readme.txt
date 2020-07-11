This file guide you how to use network commands availabe in this container

#check container ip ip ipconfig

#check port on remote server nc -v remostServerHostName|ip remostServerHostPort example: nc -v www.baidu.com 80

#use telnet, need to make sure remote server has telnet server service availabe, recommand to use nc telnet remostServerHostName|ip remostServerHostPort

#check DNS dig remostServerHostName nslookup remostServerHostName

#check hops traceroute remostServerHostName