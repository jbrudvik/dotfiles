# dotfiles

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

## Install dotfiles (WARNING: DESTRUCTIVE!)

```sh
$ git clone git@github.com:jbrudvik/dotfiles.git
$ dotfiles/install
```

## Update dotfiles

```sh
$ dotfiles/update
```

## Install tools

- [tmux](https://github.com/tmux/tmux/wiki/Installing)
- [helix](https://docs.helix-editor.com/install.html)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [bat](https://github.com/sharkdp/bat#installation)
- [fzf](https://github.com/junegunn/fzf#installation)
- [exa](https://github.com/ogham/exa#installation)
- [watchexec](https://github.com/watchexec/watchexec#install)
- [delta](https://github.com/dandavison/delta#get-started)
- [broot](https://dystroy.org/broot/install/)
- [xh](https://github.com/ducaale/xh#installation)
- [tldr](https://github.com/tldr-pages/tldr)
- [hecate](https://github.com/evanmiller/hecate)
- [gotop](https://github.com/xxxserxxx/gotop#installation)

## Install programming languages

- [Rust](https://www.rust-lang.org/tools/install)
- [Elm](https://www.rust-lang.org/tools/install)
- [Node](https://github.com/tj/n)
- [Go](https://go.dev/doc/install)
- [Python](https://github.com/pyenv/pyenv#installation)
- [Haskell](https://docs.haskellstack.org/en/stable/#how-to-install-stack)
