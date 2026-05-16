sudo iptables -A INPUT -p tcp -m tcp --dport 8000 -j ACCEPT
python3 -m http.server 8000

