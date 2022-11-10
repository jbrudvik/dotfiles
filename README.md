# dotfiles

[![CI](https://github.com/jbrudvik/dotfiles/actions/workflows/ci.yml/badge.svg)](https://github.com/jbrudvik/dotfiles/actions/workflows/ci.yml)

## Install prerequisites

### MacOS

```sh
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ brew install zsh zsh-completions
```

### Debian Linux

```sh
$ sudo apt install git
$ sudo apt install zsh
```

### Fedora Linux

```sh
$ sudo dnf install git
$ sudo dnf install zsh
```

## Set up zsh and oh-my-zsh

### Set zsh as login shell

```sh
$ grep -q $(command -v zsh) /etc/shells || sudo sh -c "echo $(command -v zsh) >> /etc/shells"
$ sudo chsh -s $(command -v zsh) $(whoami) || sudo lchsh
```

### Install [oh-my-zsh](https://ohmyz.sh)

```sh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Install dotfiles (WARNING: DESTRUCTIVE!)

```sh
$ git clone git@github.com:jbrudvik/dotfiles.git
$ dotfiles/dotfiles_install
```

## Update dotfiles

```sh
$ dotfiles_update
```

## Install tools

- [tmux](https://github.com/tmux/tmux/wiki/Installing)
- [helix](https://docs.helix-editor.com/install.html)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [bat](https://github.com/sharkdp/bat#installation)
- [fzf](https://github.com/junegunn/fzf#installation)
- [exa](https://github.com/ogham/exa#installation)
- [fd](https://github.com/sharkdp/fd#installation)
- [watchexec](https://github.com/watchexec/watchexec#install)
- [delta](https://github.com/dandavison/delta#get-started)
- [broot](https://dystroy.org/broot/install/)
- [xh](https://github.com/ducaale/xh#installation)
- [tldr](https://github.com/tldr-pages/tldr)
- [hecate](https://github.com/evanmiller/hecate)
- [bottom](https://github.com/ClementTsang/bottom#installation)
- [dog](https://github.com/ogham/dog#installation)
- [gping](https://github.com/orf/gping#install-cd)
- [procs](https://github.com/dalance/procs#installation)
- [duf](https://github.com/muesli/duf#installation)

## Install programming languages

- [Rust](https://www.rust-lang.org/tools/install)
- [Elm](https://www.rust-lang.org/tools/install)
- [Node](https://github.com/tj/n)
- [Go](https://go.dev/doc/install)
