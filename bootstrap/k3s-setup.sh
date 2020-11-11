NODE1=192.168.178.5
NODE2=192.168.178.6
NODE3=192.168.178.7

CHANNEL=stable
USER=ubuntu

k3sup install --ip $NODE1 --k3s-channel $CHANNEL --user $USER --k3s-extra-args '--no-deploy traefik --no-deploy servicelb'
k3sup join --ip $NODE2 --server-ip $NODE1 --k3s-channel $CHANNEL --user $USER
k3sup join --ip $NODE3 --server-ip $NODE1 --k3s-channel $CHANNEL --user $USER
