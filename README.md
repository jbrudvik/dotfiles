# dotfiles

[![CI](https://github.com/jbrudvik/dotfiles/actions/workflows/ci.yml/badge.svg)](https://github.com/jbrudvik/dotfiles/actions/workflows/ci.yml)

MacOS and Debian Linux config

## Install basics and dotfiles

- Install [kitty](https://sw.kovidgoyal.net/kitty/):
  - MacOS: `$ curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin`
  - Debian: `sudo apt-get install kitty`
- Install [Git](https://git-scm.com)
  - MacOS: Installed by default
  - Debian: `$ sudo apt update && sudo apt install git`
- Install [Make](https://www.gnu.org/software/make/)
  - MacOS: Installed by default
  - Debian: `$ sudo apt install make`
- Install [Homebrew](https://brew.sh)
  - MacOS: `$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  - Debian: Not needed
- Install [zsh](https://en.wikipedia.org/wiki/Z_shell)
  - MacOS: `$ brew install zsh zsh-completions`
  - Debian: `$ sudo apt install zsh`
- Set zsh as login shell: `$ grep -q $(command -v zsh) /etc/shells || sudo sh -c "echo $(command -v zsh) >> /etc/shells"; sudo chsh -s $(command -v zsh) $(whoami)`
- Install [zinit](https://github.com/zdharma-continuum/zinit): `$ bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"`
  - Then restart shell and run: `$ zinit self-update`
- Install [Starship](https://github.com/starship/starship): `$ curl -sS https://starship.rs/install.sh | sh`
- Install dotfiles (WARNING: DESTRUCTIVE!): `$ git clone https://github.com/jbrudvik/dotfiles.git && dotfiles/dotfiles_install`

## Install programming languages and tooling

### C

- Install [C (clang)](https://clang.llvm.org)
  - MacOS: Installed by default
  - Debian: `$ sudo apt install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm libgmp-dev`

### Go

- Install [Go 1.21](https://go.dev)
  - MacOS: `$ brew install go`
  - Debian: `$ GO_DOWNLOAD="go1.21.0.linux-amd64.tar.gz"; curl "https://go.dev/dl/${GO_DOWNLOAD}" -OL && sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ${GO_DOWNLOAD} && rm ${GO_DOWNLOAD}`
- Install [gopls (Go LSP)](https://pkg.go.dev/golang.org/x/tools/gopls): `$ go install golang.org/x/tools/gopls@latest`
- Install [goimports](https://pkg.go.dev/golang.org/x/tools/cmd/goimports): `$ go install golang.org/x/tools/cmd/goimports@latest`
- Install [staticcheck](https://github.com/dominikh/go-tools): `$ go install honnef.co/go/tools/cmd/staticcheck@latest`
- Install [Delve (Go debugger)](https://github.com/go-delve/delve): `$ go install github.com/go-delve/delve/cmd/dlv@latest`

### Haskell

- Install [Haskell](https://www.haskell.org):
  - `$ curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh`
  - `$ ghcup tui`
- Install [HLint](https://github.com/ndmitchell/hlint): `$ stack install hlint`
- Install [Hoogle](https://github.com/ndmitchell/hoogle): `$ stack install hoogle`
- Install [ghcid](https://github.com/ndmitchell/ghcid): `$ stack install ghcid`

### Rust

- Install [Rust](https://www.rust-lang.org): `$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
- Install [rust-analyzer (Rust LSP)](https://github.com/rust-lang/rust-analyzer)
  - MacOS: `$ brew install rust-analyzer`
  - Debian: `$ curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > rust-analyzer && chmod u+x rust-analyzer && sudo mv rust-analyzer /usr/local/bin`

### PostgreSQL

- Install [PostgreSQL](https://www.postgresql.org)
  - MacOS:
    - `$ brew install postgresql@15`
    - `$ brew services start postgresql@15`
  - Debian:
    - `$ sudo apt-get install postgresql`
    - `$ systemctl start postgresql`

### JavaScript / Node.js

- Install [Node.js](https://nodejs.org)
  - MacOS: `$ brew install n && n lts`
  - Debian: `$ curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n && bash n lts && npm install -g n && rm n`
- Install [vscode-language-servers-extracted (LSP)](https://www.npmjs.com/package/vscode-langservers-extracted): `$ npm install -g vscode-langservers-extracted`
- Install [typescript-language-server](https://www.npmjs.com/package/typescript-language-server) (including for JavaScript)

### PureScript

- Install [PureScript](https://github.com/purescript/documentation/blob/master/guides/Getting-Started.md): `$ npm install -g purescript`
- Install [Spago](https://github.com/purescript/spago): `$ npm install -g spago`
- Install [purescript-language-server (PureScript LSP)](https://github.com/nwolverson/purescript-language-server): `$ npm install -g purescript-language-server`

### Python

- Install [Python](https://www.python.org)
  - MacOS: `$ brew install python && sudo ln -s $(which python3) /usr/local/bin/python`
  - Debian: `$ sudo apt install python3 python3-dev && sudo ln -s $(which python3) /usr/bin/python`

### Bash

- Install [bash-language-server (Bash LSP)](https://github.com/bash-lsp/bash-language-server): `$ npm install -g bash-language-server`
- Install [shfmt](https://github.com/mvdan/sh): `$ go install mvdan.cc/sh/v3/cmd/shfmt@latest`
- Install [ShellCheck](https://github.com/koalaman/shellcheck)
  - MacOS: `$ brew install shellcheck`
  - Debian: `$ sudo apt install shellcheck`

### Markdown

- Install [Marksman (Markdown LSP)](https://github.com/artempyanykh/marksman)
  - MacOS: `$ brew install marksman`
  - Debian: `$ curl -L https://github.com/artempyanykh/marksman/releases/download/2023-07-01/marksman-linux-x64 -o marksman && chmod +x marksman && sudo mv marksman /usr/local/bin`

### Docker

- Install [docker-langserver (Docker LSP)](https://github.com/rcjsuen/dockerfile-language-server-nodejs): `$ npm install -g dockerfile-language-server-nodejs`

### WebAssembly

- Install [Wasmer](https://github.com/wasmerio/wasmer): [https://github.com/wasmerio/wasmer](curl https://get.wasmer.io -sSfL | sh)

## Install tools

- Install [tmux](https://github.com/tmux/tmux)
  - MacOS: `$ brew install tmux`
  - Debian: `$ sudo apt install tmux`
- Install [Helix](https://docs.helix-editor.com): `$ git clone https://github.com/helix-editor/helix && cd helix && cargo install --locked --path helix-term && ln -s "$PWD/runtime" "$HOME/.config/helix/runtime"`
- Install [Prettier](https://github.com/prettier/prettier) globally: `$ npm install -g prettier`
- Install [cargo b(inary)install](https://github.com/cargo-bins/cargo-binstall)
  - MacOS: `$ cargo install cargo-binstall`
  - Debian: `$ curl https://github.com/cargo-bins/cargo-binstall/releases/latest/download/cargo-binstall-x86_64-unknown-linux-musl.tgz -OL && sudo tar -C "$HOME/.cargo/bin" -xzf cargo-binstall-x86_64-unknown-linux-musl.tgz && rm cargo-binstall-x86_64-unknown-linux-musl.tgz`
- Install [delta](https://github.com/dandavison/delta)
  - MacOS: `$ brew install git-delta`
  - Debian: `$ cargo binstall git-delta`
- Install [exa](https://github.com/ogham/exa#installation)
  - MacOS: `$ brew install exa`
  - Debian: `$ sudo apt install exa`
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
- Install [watchexec](https://github.com/watchexec/watchexec)
  - MacOS: `$ brew install watchexec`
  - Debian: `$ cargo binstall watchexec-cli`
- Install [Caddy](https://caddyserver.com)
  - MacOS: `$ brew install caddy`
  - Debian: `$ sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https && curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg && curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list && sudo apt update && sudo apt install caddy`
- Install [glow](https://github.com/charmbracelet/glow)
  - MacOS: `$ brew install glow`
  - Linux: `$ go install github.com/charmbracelet/glow@latest`
- Install [broot](https://dystroy.org/broot)
  - MacOS: `$ brew install broot && broot`
  - Debian: `$ cargo binstall broot && broot`
- Install [xh](https://github.com/ducaale/xh)
  - MacOS: `$ brew install xh`
  - Debian: `$ cargo binstall xh`
- Install [bottom](https://github.com/ClementTsang/bottom)
  - MacOS: `$ brew install bottom`
  - Debian: `$ cargo binstall bottom`
- Install [tldr](https://github.com/tldr-pages/tldr): `$ npm install -g tldr`
- Install [hecate](https://github.com/evanmiller/hecate): `$ go install github.com/evanmiller/hecate@latest`
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

## Install server tools (Linux only)

- Install [UFW (Uncomplicated Firewall)](https://code.launchpad.net/ufw): `$ sudo apt install ufw`

## Update

```sh
$ dotfiles_update
```
