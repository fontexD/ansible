sudo mkdir -p ./files
sudo mkdir -p ./templates
sudo mv etcd.service ./files/etcd.service
sudo mv etcd.conf.yaml.j2 ./templates/etcd.conf.yaml.j2
ansible-playbook 1-certs.yaml
sleep 5
ansible-playbook 2-install.yaml
sleep 5
ansible-playbook 3-config.yaml