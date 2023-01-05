# dotfiles

[![CI](https://github.com/jbrudvik/dotfiles/actions/workflows/ci.yml/badge.svg)](https://github.com/jbrudvik/dotfiles/actions/workflows/ci.yml)

This guide walks through installing my preferred settings for both MacOS and Debian Linux. The Debian environment is assumed to be an underpowered machine.

## Install basics and dotfiles

- Install Git
  - MacOS: Installed by default
  - Debian: `$ sudo apt update && sudo apt install git`
- Install make
  - MacOS: Installed by default
  - Debian: `$ sudo apt install make`
- Install [Homebrew](https://brew.sh)
  - MacOS: `$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  - Debian: Not needed
- Install [Kitty](https://sw.kovidgoyal.net/kitty/):
  - MacOS: `$ curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin`
  - Debian: `sudo apt-get install kitty`
- Install [zsh](https://en.wikipedia.org/wiki/Z_shell)
  - MacOS: `$ brew install zsh zsh-completions`
  - Debian: `$ sudo apt install zsh`
- Set zsh as login shell: `$ grep -q $(command -v zsh) /etc/shells || sudo sh -c "echo $(command -v zsh) >> /etc/shells"; sudo chsh -s $(command -v zsh) $(whoami)`
- Install [zinit](https://github.com/zdharma-continuum/zinit): `$ bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"`
  - Then restart shell and run: `$ zinit self-update`
- Install [Starship](https://github.com/starship/starship): `$ curl -sS https://starship.rs/install.sh | sh`
- Install dotfiles (WARNING: DESTRUCTIVE!): `$ git clone https://github.com/jbrudvik/dotfiles.git && dotfiles/dotfiles_install`

## Install programming languages

- Install [Rust](https://www.rust-lang.org): `$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
- Install [Go](https://go.dev)
  - MacOS: `$ brew install go`
  - Debian: `$ curl https://go.dev/dl/go1.19.3.linux-amd64.tar.gz -OL && sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz && rm go1.19.3.linux-amd64.tar.gz`
- Install [C (clang)](https://clang.llvm.org)
  - MacOS: Installed by default
  - Debian: `$ sudo apt install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python3-clang`
- Install [Python](https://www.python.org)
  - MacOS: `$ brew install python && sudo ln -s $(which python3) /usr/local/bin/python`
  - Debian: `$ sudo apt install python3 python3-dev && sudo ln -s $(which python3) /usr/bin/python`
- Install [Elm](https://elm-lang.org)
  - MacOS: `$ brew install elm`
  - Debian: `$ curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz && gunzip elm.gz && chmod +x elm && sudo mv elm /usr/local/bin`
- Install [Node](https://nodejs.org)
  - MacOS: `$ brew install n && n lts`
  - Debian: `$ curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n && bash n lts && npm install -g n && rm n`

### Install [language servers (LSP)](https://en.wikipedia.org/wiki/Language_Server_Protocol)

- Install [rust-analyzer (Rust LSP)](https://github.com/rust-lang/rust-analyzer)
  - MacOS: `$ brew install rust-analyzer`
  - Debian: `$ curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > rust-analyzer && chmod u+x rust-analyzer && sudo mv rust-analyzer /usr/local/bin`
- Install [gopls (Go LSP)](https://pkg.go.dev/golang.org/x/tools/gopls): `$ go install golang.org/x/tools/gopls@latest`
- Install [elm-language-server (Elm LSP)](https://github.com/elm-tooling/elm-language-server): `$ npm install -g @elm-tooling/elm-language-server`
- Install [bash-language-server (Bash LSP)](https://github.com/bash-lsp/bash-language-server): `$ npm install -g bash-language-server`
- Install [docker-langserver (Docker LSP)](https://github.com/rcjsuen/dockerfile-language-server-nodejs): `$ npm install -g dockerfile-language-server-nodejs`

### Install debuggers

- Install [dlv (Go debugger)](https://github.com/go-delve/delve): `$ go install github.com/go-delve/delve/cmd/dlv@latest`

### Install [DAPs](https://microsoft.github.io/debug-adapter-protocol/)

- Install [lldb-vscode (Rust DAP)](https://github.com/vadimcn/vscode-lldb)
  - MacOS: TODO
  - Debian: TODO

## Install tools

- Install [delta](https://github.com/dandavison/delta)
  - MacOS: `$ brew install git-delta`
  - Debian: `$ cargo binstall git-delta`
- Install [exa](https://github.com/ogham/exa#installation)
  - MacOS: `$ brew install exa`
  - Debian: `$ sudo apt install exa`
- Install [tmux](https://github.com/tmux/tmux)
  - MacOS: `$ brew install tmux`
  - Debian: `$ sudo apt install tmux`
- Install [helix](https://docs.helix-editor.com)
  - MacOS: `$ brew install helix`
  - Debian: `$ curl -L -o helix.tar.gz https://github.com/helix-editor/helix/releases/download/22.12/helix-22.12-x86_64-linux.tar.xz && tar -xf helix.tar.xz && mv helix-22.12-x86_64-linux helix && sudo mv helix/hx /usr/local/bin && mv helix/runtime .config/helix/ && rm helix.tar.gz`
- Install [ripgrep](https://github.com/BurntSushi/ripgrep)
  - MacOS: `$ brew install ripgrep`
  - Debian: `$ sudo apt install ripgrep`
- Install [bat](https://github.com/sharkdp/bat)
  - MacOS: `$ brew install bat`
  - Debian: `$ sudo apt install bat && sudo ln -s $(which batcat) /usr/local/bin/bat`
- Install [fzf](https://github.com/junegunn/fzf)
  - MacOS: `$ brew install fzf`
  - Debian: `$ sudo apt install fzf`
- Install [fd](https://github.com/sharkdp/fd)
  - MacOS: `$ brew install fd`
  - Debian: `$ sudo apt install fd-find && sudo ln -s $(which fdfind) /usr/local/bin/fd`
- Install [cargo b(inary)install](https://github.com/cargo-bins/cargo-binstall)
  - MacOS: `$ cargo install cargo-binstall`
  - Debian: `$ curl https://github.com/cargo-bins/cargo-binstall/releases/latest/download/cargo-binstall-x86_64-unknown-linux-musl.tgz -OL && sudo tar -C "$HOME/.cargo/bin" -xzf cargo-binstall-x86_64-unknown-linux-musl.tgz && rm cargo-binstall-x86_64-unknown-linux-musl.tgz`
- Install [watchexec](https://github.com/watchexec/watchexec)
  - MacOS: `$ brew install watchexec`
  - Debian: `$ cargo binstall watchexec-cli`
- Install [glow](https://github.com/charmbracelet/glow)
  - MacOS: `$ brew install glow`
  - Linux: `$ go install github.com/charmbracelet/glow@latest`
- Install [broot](https://dystroy.org/broot)
  - MacOS: `$ brew install broot && broot`
  - Debian: `$ cargo binstall broot && broot`
- Install [xh](https://github.com/ducaale/xh)
  - MacOS: `$ brew install xh`
  - Debian: `$ cargo binstall xh`
- Install [tldr](https://github.com/tldr-pages/tldr): `$ npm install -g tldr`
- Install [hecate](https://github.com/evanmiller/hecate): `$ go install github.com/evanmiller/hecate@latest`
- Install [bottom](https://github.com/ClementTsang/bottom)
  - MacOS: `$ brew install bottom`
  - Debian: `$ cargo binstall bottom`
- Install [dog](https://github.com/ogham/dog)
  - MacOS: `$ brew install dog`
  - Debian: `$ curl -LO https://packages.azlux.fr/debian/pool/main/d/dog/dog_0.1.0_amd64.deb && sudo dpkg -i dog_0.1.0_amd64.deb && rm dog_0.1.0_amd64.deb`
- Install [procs](https://github.com/dalance/procs)
  - MacOS: `$ brew install procs`
  - Debian: `$ cargo binstall procs`
- Install [dust](https://github.com/bootandy/dust)
  - MacOS: `$ brew install dust`
  - Debian: `$ curl -L -o dust.gz https://github.com/bootandy/dust/releases/download/v0.8.3/dust-v0.8.3-i686-unknown-linux-gnu.tar.gz && tar -xvf dust.gz && sudo mv dust-v0.8.3-i686-unknown-linux-gnu/dust /usr/local/bin && rm -rf dust-v0.8.3-i686-unknown-linux-gnu && rm dust.gz`
- Install [duf](https://github.com/muesli/duf)
  - MacOS: `$ brew install duf`
  - Debian: `$ sudo apt install duf`
- Install [tokei](https://github.com/XAMPPRocky/tokei)
  - MacOS: `$ brew install tokei`
  - Debian: `$ cargo binstall tokei`

## Update

```sh
$ dotfiles_update
```
