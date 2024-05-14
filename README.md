# dotfiles

[![CI](https://github.com/jbrudvik/dotfiles/actions/workflows/ci.yml/badge.svg)](https://github.com/jbrudvik/dotfiles/actions/workflows/ci.yml)

MacOS setup follows. See also: [Debian Linux setup](/README_debian_linux.md).

## Install basics

- Install [kitty](https://sw.kovidgoyal.net/kitty/): `$ curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin`
- Install [Homebrew](https://brew.sh): `$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- Install [zsh](https://en.wikipedia.org/wiki/Z_shell): `$ brew install zsh zsh-completions`
- Set zsh as login shell: `$ grep -q $(command -v zsh) /etc/shells || sudo sh -c "echo $(command -v zsh) >> /etc/shells"; sudo chsh -s $(command -v zsh) $(whoami)`
- Install [zinit](https://github.com/zdharma-continuum/zinit):
  - `$ bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"`
  - Then restart shell and run: `$ zinit self-update`
- Install [Starship](https://github.com/starship/starship): `$ curl -sS https://starship.rs/install.sh | sh`

## Install dotfiles

WARNING: DESTRUCTIVE!

```sh
$ git clone https://github.com/jbrudvik/dotfiles.git && dotfiles/bin/dotfiles_install`
```

## Install programming languages and tooling

### Rust

- Install [Rust](https://www.rust-lang.org): `$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
- Install [rust-analyzer (Rust LSP)](https://github.com/rust-lang/rust-analyzer): `$ brew install rust-analyzer`
- Install [Clippy](https://github.com/rust-lang/rust-clippy): `$ rustup component add clippy`
- Install [Cargo Watch](https://github.com/watchexec/cargo-watch): `$ cargo install cargo-watch`
- Install [bacon](https://github.com/Canop/bacon): `$ cargo install --locked bacon`

### PostgreSQL

- Install [PostgreSQL](https://www.postgresql.org)
  - `$ brew install postgresql@15`
  - `$ brew services start postgresql@15`

### Go

- Install [Go 1.21](https://go.dev): `$ brew install go`
- Install [gopls (Go LSP)](https://pkg.go.dev/golang.org/x/tools/gopls): `$ go install golang.org/x/tools/gopls@latest`
- Install [staticcheck](https://github.com/dominikh/go-tools): `$ go install honnef.co/go/tools/cmd/staticcheck@latest`
- Install [Delve (Go debugger)](https://github.com/go-delve/delve): `$ go install github.com/go-delve/delve/cmd/dlv@latest`

### JavaScript / TypeScript

- Install [Bun](https://bun.sh): `$ curl -fsSL https://bun.sh/install | bash`
- Install [vscode-language-servers-extracted (LSP)](https://www.npmjs.com/package/vscode-langservers-extracted): `$ bun install -g vscode-langservers-extracted`
- Install [typescript-language-server](https://www.npmjs.com/package/typescript-language-server) (including for JavaScript) `$ bun install -g typescript-language-server typescript`
- Install [Biome](https://biomejs.dev): `$ brew install biome`
- Install [Node.js](https://nodejs.org): `$ brew install n && n lts`

### Python

- Install [Python](https://www.python.org): `$ brew install python`
- Install [uv](https://github.com/astral-sh/uv): `$ curl -LsSf https://astral.sh/uv/install.sh | sh`
- Install [ruff](https://github.com/astral-sh/ruff): `$ pip install ruff`
- Install [ruff-lsp](https://github.com/astral-sh/ruff-lsp#installation-and-usage): `$ brew install ruff-lsp`

### PureScript

- Install [PureScript](https://github.com/purescript/documentation/blob/master/guides/Getting-Started.md): `$ npm install -g purescript`
- Install [Spago](https://github.com/purescript/spago): `$ npm install -g spago@next`
- Install [purescript-language-server (PureScript LSP)](https://github.com/nwolverson/purescript-language-server): `$ npm install -g purescript-language-server`
- Install [purs-tidy (PureScript formatter)](https://github.com/natefaubion/purescript-tidy): `$ npm install -g purs-tidy`

### Haskell

- Install [Haskell](https://www.haskell.org):
  - `$ curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh`
  - `$ ghcup tui`
- Install [HLint](https://github.com/ndmitchell/hlint): `$ stack install hlint`
- Install [Hoogle](https://github.com/ndmitchell/hoogle): `$ stack install hoogle`
- Install [ghcid](https://github.com/ndmitchell/ghcid): `$ stack install ghcid`

### Bash

- Install [bash-language-server (Bash LSP)](https://github.com/bash-lsp/bash-language-server): `$ npm install -g bash-language-server`
- Install [shfmt](https://github.com/mvdan/sh): `$ go install mvdan.cc/sh/v3/cmd/shfmt@latest`
- Install [ShellCheck](https://github.com/koalaman/shellcheck): `$ brew install shellcheck`

### Markdown

- Install [Marksman (Markdown LSP)](https://github.com/artempyanykh/marksman): `$ brew install marksman`

### Docker

- Install [docker-langserver (Docker LSP)](https://github.com/rcjsuen/dockerfile-language-server-nodejs): `$ npm install -g dockerfile-language-server-nodejs`

## Install tools

- Install [Helix](https://docs.helix-editor.com): `$ brew install helix`
- Install [Prettier](https://github.com/prettier/prettier) globally: `$ npm install -g prettier`
- Install [delta](https://github.com/dandavison/delta): `$ brew install git-delta`
- Install [exa](https://github.com/ogham/exa#installation): `$ brew install exa`
- Install [ripgrep](https://github.com/BurntSushi/ripgrep): `$ brew install ripgrep`
- Install [bat](https://github.com/sharkdp/bat): `$ brew install bat`
- Install [fzf](https://github.com/junegunn/fzf): `$ brew install fzf`
- Install [fd](https://github.com/sharkdp/fd): `$ brew install fd`
- Install [watchexec](https://github.com/watchexec/watchexec): `$ brew install watchexec`
- Install [Caddy](https://caddyserver.com): `$ brew install caddy`
- Install [glow](https://github.com/charmbracelet/glow): `$ brew install glow`
- Install [broot](https://dystroy.org/broot): `$ brew install broot && broot`
- Install [xh](https://github.com/ducaale/xh): `$ brew install xh`
- Install [bottom](https://github.com/ClementTsang/bottom): `$ brew install bottom`
- Install [tldr](https://github.com/tldr-pages/tldr): `$ npm install -g tldr`
- Install [hecate](https://github.com/evanmiller/hecate): `$ go install github.com/evanmiller/hecate@latest`
- Install [dog](https://github.com/ogham/dog): `$ brew install dog`
- Install [procs](https://github.com/dalance/procs): `$ brew install procs`
- Install [dust](https://github.com/bootandy/dust): `$ brew install dust`
- Install [duf](https://github.com/muesli/duf): `$ brew install duf`
- Install [tokei](https://github.com/XAMPPRocky/tokei): `$ brew install tokei`
- Install [killport](https://github.com/jkfran/killport): `$ brew install killport`

## Update

```sh
$ dotfiles_update
```
