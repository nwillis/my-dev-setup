# My MacOSX Development Environment Setup
*I'm currently working in VR(Immersed), so my needs are highly related to that environment*

## Required Software of a Freshly Installed System
Minimalistic software installation. (No need for iCloud login)

- Google Chrome (to sync with my Chromebook)
- Immersed Desktop Agent (for connecting with my OC2)
- Amethyst Window Management (for keep multiple windows tidy)
- Stats (for system status monitoring)

## Headless Mac Mini M1 Settings
- User auto login (Users & Groups)
- Immersed auto start after login (Users & Groups)
- Prevent Mac sleeping when display is off (Energy Saver)
- Google Remote Desktop (For remote controlling)

## Terminal.app Setup
*I agree with the designing philosophy of ChromeOS, software is just a service, I don't want to install many packages locally. So iTerm2 is excluded.*

- xcode-select --install
- Rosetta 2
```
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
```
- Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)")
```
- [DejaVu Sans Mono Nerd](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.ttf)
- [Dracula theme for Terminal.app](https://draculatheme.com/terminal)
