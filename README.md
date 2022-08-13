# dotfiles: zsh/bash, git, vim, ...

[![Build](https://github.com/jbrudvik/dotfiles/actions/workflows/build.yml/badge.svg)](https://github.com/jbrudvik/dotfiles/actions/workflows/build.yml)

## macOS prerequisites

### Install Homebrew

```sh
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install zsh

```sh
$ brew install zsh zsh-completions
```

## Linux (Debian / Ubuntu) prerequisites

### Install Git

```sh
$ sudo apt update && sudo apt install git
```

### Install zsh

```sh
$ sudo apt-get install zsh
```

## Set up zsh and oh-my-zsh

### Set zsh as login shell

```sh
$ grep -q $(command -v zsh) /etc/shells || sudo sh -c "echo $(command -v zsh) >> /etc/shells"
$ sudo chsh -s $(command -v zsh) $(whoami)
```

### Install [oh-my-zsh](https://ohmyz.sh)

```sh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Installing dotfiles

### Clone this repo

```sh
$ git clone git@github.com:jbrudvik/dotfiles.git
```

Alternatively, clone using SSH if you have keys:

```sh
$ git clone https://github.com/jbrudvik/dotfiles.git
```

### Install the dotfiles: **WARNING: This is destructive!**

```sh
$ dotfiles/install
```

## Updating dotfiles

```sh
$ dotfiles/update
```

## Installing programming languages

### Install Go

#### Install Go on macOS

Install Go:

- [Official Go installer (wizard)](https://go.dev/doc/install)

Install Go language server:

```sh
$ go install golang.org/x/tools/gopls@latest
```

#### Install Go on Linux (Debian / Ubuntu)

```sh
$ sudo apt update && sudo apt install wget
$ wget https://storage.googleapis.com/golang/getgo/installer_linux
$ chmod u+x installer_linux
$ ./installer_linux
```

### Install Elm

- [Install Elm](https://guide.elm-lang.org/install/elm.html)

### Install Node

#### Install Node on macOS

```sh
$ brew install n
$ n lts
```

#### Install Node on Linux

```sh
$ sudo apt-get install build-essential
$ curl -L https://bit.ly/n-install | bash
$ n lts
```

### Install Python

```sh
$ brew install pyenv
$ pyenv install <latest>
$ pyenv global <latest>
```

### Install Haskell

Force installing in x86 mode (M1 Macs not fully supported as of January 2022):

```sh
$ curl -sSL https://get.haskellstack.org/ | arch -x86_64 sh
```

### Install Rust

```sh
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
