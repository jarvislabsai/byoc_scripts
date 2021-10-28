apt install openssh-server -y automatically
mkdir -p ~/.ssh
SSH_KEY=$1
echo $SSH_KEY
echo $SSH_KEY | tee -a ~/.ssh/authorized_keys && \
    chmod 600 ~/.ssh/authorized_keys