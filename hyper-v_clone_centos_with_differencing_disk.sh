#!/bin/bash
mv /boot/efi/EFI/BOOT /boot/efi/EFI/BOOT.old
cp -R /boot/efi/EFI/centos /boot/efi/EFI/BOOT
cp /boot/efi/EFI/BOOT/shimx64.efi /boot/efi/EFI/BOOT/BOOTX64.efi
grub2-mkconfig -o /boot/efi/EFI/centos/grub.cfg