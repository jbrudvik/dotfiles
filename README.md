# dotfiles: zsh/bash, git, vim, VS Code, ...

## Prerequisites

### Very basics

### macOS

- Install [Homebrew](https://brew.sh)

#### Linux

Install Git:

```sh
$ sudo apt update && sudo apt install git
```

### Install zsh

#### macOS

```sh
$ brew install zsh zsh-completions
```

#### Linux

```sh
$ sudo apt-get install zsh
```

### Set zsh as login shell

```sh
$ grep -q $(command -v zsh) /etc/shells || sudo sh -c "echo $(command -v zsh) >> /etc/shells"
$ sudo chsh -s $(command -v zsh) $(whoami)
```

### Install [oh-my-zsh](https://ohmyz.sh)

```sh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Installing

Clone this repo:

```sh
$ git clone git@github.com:jbrudvik/dotfiles.git
```

Alternatively, clone using SSH if you have keys:

```sh
$ git clone https://github.com/jbrudvik/dotfiles.git
```

Install the dotfiles: **WARNING: This is destructive!**

```sh
$ dotfiles/install_dotfiles
```

### Installing programming languages

#### Go

- [Official Go installer (wizard)](https://go.dev/doc/install)

```sh
$ go install golang.org/x/tools/gopls@latest
```

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
