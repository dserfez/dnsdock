#!/bin/bash
docker run --rm -ti --name dns \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -p 172.17.42.1:53:53/udp \
  cycomf/dnsdock
