## Setup
- Install [powerlevel10k](https://github.com/romkatv/powerlevel10k/?tab=readme-ov-file#installation)

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
