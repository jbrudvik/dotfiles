# Developing dotfiles

## Required dependencies

### Install shfmt

```sh
$ brew install shfmt
```

### Install Prettier

```sh
npm install -g prettier
```

### Install ShellCheck

```sh
$ brew install shellcheck
```

## Before committing

```sh
$ make format
$ make lint
```

## Watch and lint

```sh
$ make watch
```
