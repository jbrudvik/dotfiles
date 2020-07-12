# dotfiles: zsh/bash, git, vim, VS Code, ...

## Prerequisites

### Install zsh

#### macOS

```sh
$ brew install zsh zsh-completions
```

#### Debian / Ubuntu

```sh
$ sudo apt-get install zsh
```

### Add zsh to valid login shells

```sh
$ grep -q $(command -v zsh) /etc/shells || sudo sh -c "echo $(command -v zsh) >> /etc/shells"
```

### Set zsh as login shell

```sh
$ sudo chsh -s $(command -v zsh) $(whoami)
```

### Install [oh-my-zsh](https://ohmyz.sh)

```sh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Install dotfiles (WARNING: Destructive!)

```sh
$ git clone git@github.com:jbrudvik/dotfiles.git
$ dotfiles/install
```
