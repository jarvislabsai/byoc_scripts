cd /root
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
export PATH="/root/miniconda3/bin:$PATH"  # Temporarily add Miniconda to PATH for this session
echo 'export PATH="/root/miniconda3/bin:$PATH"' >> ~/.bashrc  # Add Miniconda to PATH permanently
rm -rf /root/Miniconda3-latest-Linux-x86_64.sh 

source ~/.bashrc
conda init bash
source ~/.bashrc  # Reload .bashrc to ensure conda is initialized

conda install -y jupyterlab  # Install Jupyter Lab using conda

DEBIAN_FRONTEND=noninteractive apt install openssh-server -y 
mkdir -p ~/.ssh
service ssh restart

echo "cd /root" >> ~/.bashrc
source ~/.bashrc

export SHELL="/bin/bash"

env HOME=/home jupyter lab --ip=0.0.0.0 --NotebookApp.token=$TOKEN  --allow-root --port 8889 &

export HOME="/home"
