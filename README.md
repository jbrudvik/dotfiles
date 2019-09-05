# dotfiles: zsh, git, vim

## Install (MacOS)

```sh
$ git clone git@github.com:jbrudvik/dotfiles.git
$ cd dotfiles
$ ./install
```

Insert into VS Code settings (`~/Library/Application Support/Code/User/settings.json`):

```json
{
  "terminal.integrated.shell.osx": "/usr/local/bin/zsh"
}
```

## Uninstall

```sh
$ cd dotfiles
$ ./uninstall
```
