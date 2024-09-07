### Setup Stow in home dir

```bash
brew install stow
git clone git@github.com:farbodvand/dotfiles.git
cd ~/dotfiles
cp -r ~/.config/ .config
stow .

SetFile -P -a V filename # hide symlink icon in home
```

### Restore dotfiles with Stow

```bash
cd ~/dotfiles
stow .
```

### Stow commands and configs
```bash
stow <packagename> # activates symlink
stow -n <packagename> # trial runs or simulates symlink generation. Effective for checking for errors
stow -D <packagename> # delete stowed package
stow -R <packagename> # restows package

nano .gitignore # add or remove git ignore items
nano .stow-local-ignore # add or remove stow ignore items
```
