## Setup
- Install [powerlevel10k](https://github.com/romkatv/powerlevel10k/?tab=readme-ov-file#installation)
- Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
- Install [bat](https://github.com/sharkdp/bat?tab=readme-ov-file#installation)
- Install [zoxide](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation)
- Install [lsd](https://github.com/lsd-rs/lsd?tab=readme-ov-file#installation)
- Install [Nerd Font](https://github.com/ryanoasis/nerd-fonts/blob/master/readme.md)
- Install [ascinfo](https://github.com/lenartkladnik/ascinfo?tab=readme-ov-file#install)

> Copy paste install for Arch Linux
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
sudo pacman -S zsh-syntax-highlighting --noconfirm
sudo pacman -S bat --noconfirm
sudo pacman -S zoxide --noconfirm
sudo pacman -S lsd --noconfirm
sudo pacman -S nerd-fonts --noconfirm
curl -fsSL https://raw.githubusercontent.com/lenartkladnik/ascinfo/main/install.sh | sh
```


- Download and setup the configs
```bash
git clone https://github.com/lenartkladnik/zsh-config ~/.config/zsh-dotfiles
ln -sf ~/.config/zsh-dotfiles/.zshrc ~/.zshrc
ln -sf ~/.config/zsh-dotfiles/.p10k.zsh ~/.p10k.zsh
exec zsh
```

## Updating
```bash
cd ~/.config/zsh-dotfiles
git pull
exec zsh
```
