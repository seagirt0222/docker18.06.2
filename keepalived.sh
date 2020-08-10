# vim keepalived.sh
#!/bin/bash
VIRTUAL_IP=10.16.10.210         # VIP
INTERFACE=ens160                   # 网卡名称
NETMASK_BIT=24
CHECK_PORT=6443                   # Haproxy端口
RID=10
VRID=160
MCAST_GROUP=224.0.0.18
docker run -itd --restart=always --name=keepalived-k8s \
           --net=host --cap-add=NET_ADMIN \
           -e VIRTUAL_IP=$VIRTUAL_IP \
           -e INTERFACE=$INTERFACE \
           -e NETMASK_BIT=$NETMASK_BIT \
           -e CHECK_PORT=$CHECK_PORT \
           -e RID=$RID -e VRID=$VRID \
           -e MCAST_GROUP=$MCAST_GROUP  wise2c/keepalived-k8s
