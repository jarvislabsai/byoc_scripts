cd /root
apt update
apt-get install -y git wget vim
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
rm -rf Miniconda3-latest-Linux-x86_64.sh 
DEBIAN_FRONTEND=noninteractive apt install openssh-server -y 
mkdir -p ~/.ssh
service ssh restart
echo "cd /root" >> ~/.bashrc
echo "export HOME=/root/" >> ~/.bashrc
echo "PATH='/root/miniconda3/bin:/root/miniconda3/condabin:/root/miniconda3/bin:/opt/conda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:~/.local/bin'" >> ~/.bashrc
source .bashrc
conda init && source .bashrc
pip install jupyterlab notebook ipywidgets
export SHELL="/bin/bash"
env HOME=/root/ jupyter lab --ip=0.0.0.0 --NotebookApp.token=$TOKEN  --allow-root --port 8889
rm -rf launch.sh