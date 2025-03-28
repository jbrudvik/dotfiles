## Debian Linux setup

## Install basics

- Install [Git](https://git-scm.com): `$ sudo apt update && sudo apt install git`
- Install [Make](https://www.gnu.org/software/make/): `$ sudo apt install make`
- Install [zsh](https://en.wikipedia.org/wiki/Z_shell): `$ sudo apt install zsh`
- Set zsh as login shell: `$ grep -q $(command -v zsh) /etc/shells || sudo sh -c "echo $(command -v zsh) >> /etc/shells"; sudo chsh -s $(command -v zsh) $(whoami)`
- Install [Antidote](https://antidote.sh)
- Install [Starship](https://github.com/starship/starship): `$ curl -sS https://starship.rs/install.sh | sh`
- Install [Zed](https://zed.dev)
- Install [Ghostty](https://ghostty.org)

## Install dotfiles

```sh
$ git clone https://github.com/jbrudvik/dotfiles.git
$ dotfiles/link_dotfiles # WARNING: Destructive!
```

## Install programming languages and tooling

### C

- Install [C (clang)](https://clang.llvm.org): `$ sudo apt install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm libgmp-dev`

### JavaScript

- Install [Bun](https://bun.sh): `$ curl -fsSL https://bun.sh/install | bash`
- Install [Node](https://nodejs.org): `$ sudo apt install nodejs`

### PostgreSQL

- Install [PostgreSQL](https://www.postgresql.org)
  - `$ sudo apt-get install postgresql`
  - `$ systemctl start postgresql`

### Python

- Install [Python](https://www.python.org): `$ sudo apt install python3 python3-dev`

## Install tools

- Install [Caddy](https://caddyserver.com): `$ sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https && curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg && curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list && sudo apt update && sudo apt install caddy`
- Install [UFW (Uncomplicated Firewall)](https://code.launchpad.net/ufw): `$ sudo apt install ufw`

## Update dotfiles

```sh
$ cd dotfiles
$ git pull
$ link_dotfiles # WARNING: Destructive!
```
