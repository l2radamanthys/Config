# Instalar Drives Nvidia

## Detectar Grafica

	lspci | grep VGA

## Agregar ppa

  
    sudo add-apt-repository ppa:graphics-drivers/ppa -y

## Checkear drivers disponibles

    ubuntu-drivers devices

## Instalar 

    sudo apt-get install nvidia-driver-535 nvidia-utils-535


## Soporte Cuda

    sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/3bf863cc.pub

o

    wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb
    sudo dpkg -i cuda-keyring_1.0-1_all.deb

## Instalar 

    sudo apt install nvidia-driver-535-open nvidia-utils-535 cuda