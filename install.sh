#!/usr/bin/env bash

# Dependencia de modulos
echo -e "br_netfilter\nip_vs\nip_vs_rr\nip_vs_sh\nip_vs_wrr\nnf_conntrack_ipv4" > /etc/modules-load.d/k8s.conf
apt-get update
apt-get install -y git wget vim curl

# Instalando o docker
cd /tmp
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh

# Instalando o kubernets

## Driver cgroup
cat > /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

sudo mkdir -p /etc/systemd/system/docker.service.d
sudo systemctl daemon-reload
sudo systemctl restart docker

## Instalando o kubeadm
sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl

## Desativando a swap
sudo swapoff -a