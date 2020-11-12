## Recuperar Grub

Quemar un pendrive booteable con xubuntu 18.04

Identificar las particiones que necesitamos, en nuestro caso son correspondiente a `/`, `/home` y `efi`

	sudo fdisk -l #para ver todas las particiones
	
Montamos las particiones necesarias

	sudo mount /dev/sde1 /mnt  #tengo instalado linux en sde
	sudo mount /dev/sde2 /mnt/home
	sudo mount /dev/sda1 /mnt/boot/efi #la particion efi esta en sda1 

Creamos enlaces a varios elementos que necesitaremos

	for i in /dev /dev/pts /proc /sys /run; do sudo mount -B $i /mnt$i; done
	
Nos damos de alta como root en la partición de sistema recién montada:

	sudo chroot /mnt
	
Una ves logueados como root instalamos grub, para ello seleccionamos el disco donde esta la partición efi en mi caso en sda.

	grub-install /dev/sda
	
Paso siguiente actualizaremos la grub

	update-grub
	
Si no dio errores, felicidades recuperamos la grub.

## Instalar Grub Grafica

	sudo apt-get install grub2-splashimages


### Instalar Grub Manager

	sudo add-apt-repository ppa:danielrichter2007/grub-customizer
	sudo apt-get update
	sudo apt-get install grub-customizer

### Instalar Fallout Theme

	wget -O - https://github.com/shvchk/fallout-grub-theme/raw/master/install.sh | bash
	
