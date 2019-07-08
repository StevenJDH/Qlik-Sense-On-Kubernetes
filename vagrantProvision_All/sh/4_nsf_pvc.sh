#Install storageClass on NFS provider
helm install -n nfs stable/nfs-client-provisioner -f /vagrant/files/storageClass.yaml

#Create Persistent Volume Claims
kubectl apply -f /vagrant/files/pvc.yaml