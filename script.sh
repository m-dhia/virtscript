# Install required packages
sudo pacman -S --noconfirm virt-manager qemu vde2 ebtables dnsmasq bridge-utils openbsd-netcat

# Start and enable libvirtd service
sudo systemctl start libvirtd
sudo systemctl enable libvirtd

# Add the user to the 'libvirt' group to run virt-manager without sudo
sudo gpasswd -a $USER libvirt

# Reload the group changes
newgrp libvirt

# Print a message indicating the installation is complete
echo "virt-manager installation completed. Please log out and log back in to apply group changes."
