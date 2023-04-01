# Python Template

A [simple] [general-purpose] Python template 🐍🚀🎉🦕

# How to use

- Linux and Mac
  Use GCC Makefile

- Install Makefile

  https://community.chocolatey.org/packages/make

  http://www.cygwin.com/

### Bootstrap

``` bash
    make env
```

``` bash
    source env/bin/activate
```

``` bash
    make check
```

``` bash
    make test
```

### Install a package

``` bash
    make piu numpy matplotlib scipy
```

## Features

- Linter: Pylint
- Formatter: Black
- CI: GitHub Actions

### ToDo

- [x] Formatter: Black + isort
- [x] Type checker: MyPy
- [x] Linter: Pylint
- [x] GitHub Actions
- [x] Git Hooks
- [x] PyPI Publish
- [x] Flit
- [x] Poetry

### Git

Git hooks are available in ./scripts/.githooks

``` bash
    chmod +x ./scripts/.githooks/script

    git config core.hooksPath ./scripts/.githooks

```
