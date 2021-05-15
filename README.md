## Arch
### Pre-installation
- https://wiki.archlinux.org/index.php/Installation_guide
- Make usb install media
    ```sh
    sudo cp archlinux.iso /dev/sdX
    sudo sync
    ```
- Connect to the internet
    ```sh
    iwctl
    ```
- Update the system clock
    ```sh
    timedatectl set-ntp true
    ```
- Partition the disks
    ```sh
    lsblk
    mkfs.vfat -F 32 /dev/nvme0n1p1
    mkfs.ext4 /dev/nvme0n1p2
    mkswap /dev/nvme0n1p3
    swapon /dev/nvme0n1p3
    ```
- Mount the file systems
    ```sh
    mount /dev/nvme0n1p2 /mnt
    mkdir /mnt/efi
    mount /dev/nvme0n1p1 /mnt/efi
    ```
- Select the mirrors
    ```sh
    vim /etc/pacman.d/mirrorlist
    ```
- Install essential packages
    ```sh
    pacstrap /mnt base linux linux-firmware
    ```
- Fstab
    ```sh
    genfstab -U /mnt >> /mnt/etc/fstab
    ```
- Chroot
    ```sh
    arch-chroot /mnt
    ```
- Time zone
    ```sh
    ln -sf /usr/share/zoneinfo/Japan /etc/localtime
    hwclock --systohc
    ```
- Localization
    ```sh
    # uncomment `en_US.UTF-8 UTF-8`
    vim /etc/locale.gen
    locale-gen

    # /etc/locale.conf
    LANG=en_US.UTF-8
    ```
- Network configuration
    ```sh
    # /etc/hostname
    myhostname

    # /etc/hosts
    127.0.0.1       localhost
    ::1             localhost
    127.0.1.1       myhostname.localdomain    myhostname
    ```
- Root password
    ```sh
    passwd
    ```
- Install networkmanager
    ```sh
    pacman -S networkmanager
    ```
- Install microcode
    ```sh
    pacman -S intel-ucode
    ```
- Install Grub
    ```sh
    pacman -S grub efibootmgr os-prober
    grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
    grub-mkconfig -o /boot/grub/grub.cfg
    ```
- Exit chroot and reboot
    ```sh
    exit
    reboot
    ```

### Install
```sh
systemctl start NetworkManager
useradd -m {user}
passwd {user}
# logout and re-login as {user}
exit
nmcli dev wifi con {ssid} password {password} name {connection name}
curl -O https://raw.githubusercontent.com/sun617/arch-playbook/master/bootstrap.sh
bash bootstrap.sh
```

## Mac
```sh
git clone https://github.com/choihongil/debian-playbook.git
cd debian-playbook
# Install mac applications
./bootstrap.sh
# setup vagrant
vagrant up
```

## Multiple SSH Keys settings for different github account

1. Generate ssh key
```sh
ssh-keygen -f ~/.ssh/id_rsa_example
```

2. Config ssh
```sh
# ~/.ssh/config
Host example.github.com
  HostName github.com
  IdentityFile ~/.ssh/id_rsa_example
```

3. Config git
```sh
# ~/.gitconfig
[includeif "gitdir:~/example/"]
        path = ~/.gitconfig_example
```

4. Additional git config
```sh
# ~/.gitconfig_example
[user]
	name = name
	email = name@example.com
[url "git@example.github.com"]
        insteadOf = git@github.com
```
