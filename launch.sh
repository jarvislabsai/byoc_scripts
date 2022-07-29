DEBIAN_FRONTEND=noninteractive apt install openssh-server -y 
mkdir -p ~/.ssh
service ssh restart
echo "cd /home" >> ~/.bashrc
echo "export HOME=/home/" >> ~/.bashrc
export SHELL="/bin/bash"
