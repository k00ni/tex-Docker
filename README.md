# latex

Full texlive distribution which is based on `ubuntu:xenial`.

## Usage

```sh
$ docker build . -t tex
$ docker run --rm -it -v $(pwd):/source tex
```

Mount your local source folder to the container and run it inside the container.

#### Compiling a latex document

```sh
$ pdflatex my-document.tex
```

#### Compiling a xetex document

```sh
$ xelatex my-document.tex
```

## Acknowledgement

This is an adapted version of [schickling/dockerfiles](https://github.com/schickling/dockerfiles/tree/master/latex).
