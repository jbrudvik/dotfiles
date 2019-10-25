# dotfiles: zsh (+ bash), git, vim

## Install

### Install zsh

- macOS: `$ brew install zsh zsh-completions`
- Ubuntu: `$ sudo apt-get install zsh`

### Set zsh as default shell

```sh
$ sudo sh -c "echo $(which zsh) >> /etc/shells"
$ chsh -s $(which zsh) # Or: $ sudo chsh -s $(which zsh) $(whoami)
```

### Install dotfiles

```sh
$ git clone git@github.com:jbrudvik/dotfiles.git
$ cd dotfiles
$ ./install
```

### Set zsh as default in VS Code

Insert into VS Code settings:

- macOS (`~/Library/Application Support/Code/User/settings.json`): `"terminal.integrated.shell.osx": "zsh",`
- Linux (`~/.config/Code/User/settings.json`): `"terminal.integrated.shell.linux": "zsh",`

## Uninstall

```sh
$ cd dotfiles
$ ./uninstall
```
