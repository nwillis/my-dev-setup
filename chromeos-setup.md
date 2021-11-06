# ChromeOS Linux Terminal Setup
- Setup Linux from Settings: Settings -> Developers -> Linux development environment -> Turn on
- *Please remember the username you inputted before creating this environment*

## Change Linux container to ArchLinux

**Create ArchLinux container**
- Power of the Linux container
- Open the browser, press ctrl+alt+t to open Crosh
- Fetch ArchLinux container
```bash
vmc start termina
lxc launch images:archlinux/current arch
lxc exec arch -- bash
```

**Setup ArchLinux**
- Pacman update and install required packages
```bash
pacman -Syu sudo base-devel git wayland xorg-xwayland xsel
```
- Set sudo privilege and generate locale
```bash
# Note: make sure this username is the same as you inputted before creating the container
USERNAME=lucas
visudo # uncomment the line (%wheel ALL=(ALL) ALL)
useradd -m -g wheel $USERNAME
passwd $USERNAME

vi /etc/locale.gen # uncomment the line en_US.UTF-8 UTF-8
locale-gen
localectl set-locale LANG=en_US.UTF-8

exit
```
- Relogin and setup Chrome container guest tool
```bash
lxc console arch
git clone https://aur.archlinux.org/cros-container-guest-tools-git.git
cd cros-container-guest-tools-git
makepkg -sri
cp -r /etc/skel/.config/pulse ~/.config/
systemctl --user enable --now sommelier@0 sommelier-x@0 sommelier@1 sommelier-x@1
cd ..
rm -rf cros-container-guest-tools-git
exit
```
- 'Ctrl+a q' detach from this conainter session back to termina

**Replace Debian container with ArchLinux**
```bash
lxc stop --force arch penguin
lxc delete penguin
lxc rename arch penguin
logout
exit
```
- Now you can start Linux as normal by clicking the terminal icon
