### Setup Stow

```bash
brew install stow
mkdir $HOME/dotfiles
cd dotfiles
git init .
nano git .gitignore # add ignored files and dirs
nano .stow-local-ignore # add ignore list if any
mkdir .config
cp -r ~/.config/ .config
rm -rf ~/.config/
stow .
SetFile -P -a V filename # hide symlink icon in home
```

### Restore dotfiles with Stow

```bash
mkdir $HOME/dotfiles
stow .
```

### Stow commands 
```bash
stow <packagename> # activates symlink
stow -n <packagename> # trial runs or simulates symlink generation. Effective for checking for errors
stow -D <packagename> # delete stowed package
stow -R <packagename> # restows package
```