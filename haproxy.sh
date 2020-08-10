# vim haproxy.sh
#!/bin/bash
MasterIP1=10.16.10.211
MasterIP2=10.16.10.212
MasterIP3=10.16.10.213
MasterPort=6443                   
# apiserver端口
​
docker run -d --restart=always --name haproxy-k8s -p 6444:6444 \
           -e MasterIP1=$MasterIP1 \
           -e MasterIP2=$MasterIP2 \
           -e MasterIP3=$MasterIP3 \
           -e MasterPort=$MasterPort  wise2c/haproxy-k8s
​
