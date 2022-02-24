#!/usr/bin/bash
python3 -m venv env
source env/bin/activate
echo "export JUPYTER_CONFIG_DIR=env/share/jupyter/lab/" >> env/bin/activate

pip install wheel==0.37.1 jupyterlab==3.2.8
python3 -m ipykernel install --user --name=env
echo "c.MappingKernelManager.default_kernel_name='env'" >> env/share/jupyter/lab/jupyter_lab_config.py

pip install -r requirements.txt

jupyter nbextension enable --py widgetsnbextension

wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.6.1/local_installers/cuda-repo-wsl-ubuntu-11-6-local_11.6.1-1_amd64.deb
sudo dpkg -i cuda-repo-wsl-ubuntu-11-6-local_11.6.1-1_amd64.deb
sudo apt-key add /var/cuda-repo-wsl-ubuntu-11-6-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda
sudo dpkg -i cuda-repo-wsl-ubuntu-11-6-local_11.6.1-1_amd64.deb
