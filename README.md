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
$ dotfiles/install_dotfiles
```

### Install programming languages

#### Go

- [Official Go installer (wizard)](https://go.dev/doc/install)

#### Elm

- [Official Elm installer (wizard)](https://guide.elm-lang.org/install/elm.html)

#### Node

```sh
$ brew install n
$ n lts
```

#### Python

```sh
$ brew install pyenv
$ pyenv install <latest>
$ pyenv global <latest>
```

#### Haskell

Force installing in x86 mode (M1 Macs not fully supported as of January 2022):

```sh
$ curl -sSL https://get.haskellstack.org/ | arch -x86_64 sh
```

#### Rust

```sh
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Update dotfiles

```sh
$ update_dotfiles
```
