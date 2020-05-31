## Arch
### Pre-installation
- guide
  https://wiki.archlinux.org/index.php/Installation_guide
- make usb install media
  ```
  sudo cp archlinux.iso /dev/sdX
  sudo sync
  ```
### Install
```
pacman -S curl git python
useradd -m {user}
passwd {user}
# logout and re-login
exit
curl -O https://raw.githubusercontent.com/choihongil/arch-playbook/master/bootstrap.sh
bash bootstrap.sh
```

## Mac
```
git clone https://github.com/choihongil/debian-playbook.git
cd debian-playbook
# Install mac applications
./bootstrap.sh
# setup vagrant
vagrant up
```

## Multiple SSH Keys settings for different github account

1. Generate ssh key
```
ssh-keygen -f ~/.ssh/id_rsa_example
```

2. Config ssh
```
# ~/.ssh/config
Host example.github.com
  HostName github.com
  PreferredAuthentications publickey
  IdentityFile ~/.ssh/id_rsa_example
```

3. Config git
```
# ~/.gitconfig
[includeif "gitdir:~/example/"]
        path = ~/.gitconfig_example
```

4. Additional git config
```
# ~/.gitconfig_example
[user]
	name = name
	email = name@example.com
[url "git@example.github.com"]
        insteadOf = git@github.com
```
