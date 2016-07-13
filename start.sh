#!/bin/bash
sudo iptables -t nat -A PREROUTING -s 172.17.42.0/24 -d 172.17.42.1 -p udp --dport 53 -j REDIRECT --to 5553

docker run --rm -ti --name dns \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -p 172.17.42.1:5553:53/udp \
  cycomf/dnsdock
