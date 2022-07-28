DEBIAN_FRONTEND=noninteractive apt install openssh-server -y 
mkdir -p ~/.ssh
SSH_KEY=$1
echo -e $SSH_KEY
echo -e $SSH_KEY | tee -a ~/.ssh/authorized_keys && \
    chmod 600 ~/.ssh/authorized_keys
service ssh restart
echo "cd /home" >> ~/.bashrc
echo "export HOME=/home/" >> ~/.bashrc
export SHELL="/bin/bash"
