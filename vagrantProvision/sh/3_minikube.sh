#!/bin/bash

echo 'executing "3_minikube.sh"'
# this will install minikube Kubernetes and Helm

sudo swapoff -a

echo 'Installing Kubernetes'

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update -y -qq
apt-get install -y kubectl kubeadm kubelet 

sudo curl -s -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && sudo chmod +x minikube && sudo mv minikube /usr/local/bin/
 
#https://github.com/kubernetes/minikube
echo 'Setting Developer Mode'
export MINIKUBE_WANTUPDATENOTIFICATION=false
export MINIKUBE_WANTREPORTERRORPROMPT=false
export MINIKUBE_HOME=/home/vagrant
export CHANGE_MINIKUBE_NONE_USER=true
export KUBECONFIG=/home/vagrant/.kube/config

#we want things things to stick each time we login or start the machine
echo "export MINIKUBE_WANTUPDATENOTIFICATION=false" >> /home/vagrant/.bash_profile
echo "export MINIKUBE_WANTREPORTERRORPROMPT=false" >> /home/vagrant/.bash_profile
echo "export MINIKUBE_HOME=/home/vagrant" >> /home/vagrant/.bash_profile
echo "export CHANGE_MINIKUBE_NONE_USER=true" >> /home/vagrant/.bash_profile
echo "export KUBECONFIG=/home/vagrant/.kube/config" >> /home/vagrant/.bash_profile
echo "sudo swapoff -a" >> /home/vagrant/.bash_profile
echo "source <(kubectl completion bash)" >> /home/vagrant/.bash_profile
echo "sudo chown -R vagrant /home/vagrant/.kube" >> /home/vagrant/.bash_profile
echo "sudo chgrp -R vagrant /home/vagrant/.kube" >> /home/vagrant/.bash_profile

#sudo cp /root/.minikube $HOME/.minikube
echo "sudo chown -R vagrant /home/vagrant/.minikube" >> /home/vagrant/.bash_profile
echo "sudo chgrp -R vagrant /home/vagrant/.minikube" >> /home/vagrant/.bash_profile

mkdir /home/vagrant/.kube || true
touch /home/vagrant/.kube/config

echo 'Starting minikube local cluster'

minikube start --kubernetes-version v1.15.0 --memory 8000 --cpus=2 --vm-driver=none
# minikube start --kubernetes-version v1.15.0 --memory 8000 --cpus=2 --vm-driver=none --extra-config=apiserver.service-node-port-range=80-32767

#sudo cp /root/.kube $HOME/.kube
sudo chown -R vagrant /home/vagrant/.kube
sudo chgrp -R vagrant /home/vagrant/.kube

#sudo cp /root/.minikube $HOME/.minikube
sudo chown -R vagrant /home/vagrant/.minikube
sudo chgrp -R vagrant /home/vagrant/.minikube

echo 'Getting Helm'
curl -s https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
chmod 700 get_helm.sh
# Helm version 2.14 doesn't work, use the older v2.13.1 version if needed.
./get_helm.sh --version v2.14.2

#Initialize Helm Tiller pod, upgrade and update the repos
helm init
helm init --wait --upgrade
helm repo update


