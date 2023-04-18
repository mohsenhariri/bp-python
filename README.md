# Python Template

A [simple] [general-purpose] Python template 🐍🚀🎉🦕


I used this template for [fesenjoon](https://pypi.org/project/fesenjoon/) and [medviz](https://pypi.org/project/medviz/).

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
    source env_platform_ver/bin/activate
```

``` bash
    make
```

``` bash
    make check
```

``` bash
    make pireq
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


