sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
kubeadm join 192.168.31.24:6443 --token m45xhp.94um2cow8j5pho1s \
    --discovery-token-ca-cert-hash sha256:342a91a7805ef6c8d85925133ac4b2da4f3d4d027ef7338cefc529e25e55c002 
