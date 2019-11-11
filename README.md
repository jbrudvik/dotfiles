# dotfiles: zsh/bash, git, vim

## Install

<!--
TODO: Probably just automate all of this
- It might make running the script more complicated, but it'll make it doable in one-shot
    - May be annoying that sudo is required, but this is also fine
- Then, simplify the README (just say that macOS and Ubuntu are supported)
-->

### Install zsh

- macOS: `$ brew install zsh zsh-completions`
- Ubuntu: `$ sudo apt-get install zsh` <!-- TODO: Determine if zsh-completions need to be installed -->

### Set zsh as default shell

```sh
$ sudo sh -c "echo $(which zsh) >> /etc/shells"
$ sudo chsh -s $(which zsh) $(whoami)
```

### Install

```sh
$ git clone git@github.com:jbrudvik/dotfiles.git
$ cd dotfiles
$ ./install
```

### Set zsh as default in VS Code

TODO: Obviate this section by including vs code settings in dotfiles

Insert into VS Code settings:

- macOS (`~/Library/Application Support/Code/User/settings.json`): `"terminal.integrated.shell.osx": "zsh",`
- Linux (`~/.config/Code/User/settings.json`): `"terminal.integrated.shell.linux": "zsh",`

## Uninstall

```sh
$ cd dotfiles
$ ./uninstall
```
