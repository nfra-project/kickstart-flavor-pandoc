
# kickstart-flavor PanDoc :: LaTeX Document generating container

[![Actions Status](https://github.com/nfra-project/kickstart-flavor-pandoc/workflows/test/badge.svg)](https://github.com/nfra-project/kickstart-flavor-pandoc/actions)
[![Docker Pulls](https://img.shields.io/docker/pulls/nfra/kickstart-flavor-pandoc.svg)](https://github.com/nfra-project/kickstart-flavor-pandoc)

see (http://github.com/infracamp/kickstart) for more information.

Document Index:

- [Development Guide for this flavor](DEVELOPMENT.md)
- [Dockerhub page](https://hub.docker.com/r/nfra/kickstart-flavor-pandoc/)
    - [Tags available](https://hub.docker.com/r/nfra/kickstart-flavor-pandoc/tags/)
    - [Build details](https://hub.docker.com/r/nfra/kickstart-flavor-pandoc/builds/)


## Tags

*Use -min images in Dockerfile and main image in .kick.yml*

| Tag         | OS                                  | Branch     | CKit     | Docs |
|-------------|-------------------------------------|------------|----------|------|
| 2           | Ubuntu 20.04                        | 2-stable   | 1.1      | [Readme](https://github.com/nfra-project/kickstart-flavor-pandoc/tree/2-stable) |
| unstable    | Ubuntu 20.10 (master), Pandoc 2.5   | main       | unstable | [Readme](https://github.com/nfra-project/kickstart-flavor-pandoc/) |

Kickstart uses a fixed version of Ckit to keep the features freeze within
a version.

## Basic example

You find a example in [examples directory](examples/). A demostration of the pdf output can be found 
in [document.pdf](examples/basic-writing/output.pdf).

## Install additional packages

The container comes with no additional Modules pre-installed except xdebug. You might
want to add the following packages to your <kbd>.kick.yml</kbd> `packages:` section to install them.


## Preinstalld Extensions

- [TexLive](https://www.tug.org/texlive/doc/texlive-en/texlive-en.html)
- [Citing and Bibliography]()
- [Acronyms](https://github.com/tomncooper/pandoc-gls)
- [General Numbering and Referencing of Images, Tables and Sections](https://github.com/tomduck/pandoc-xnos)
- [PlantUML Diagramms](https://plantuml.com/de/theme) and [how to use in pandoc](https://github.com/timofurrer/pandoc-plantuml-filter)
- [poppler-utils like pdfunite to merge single files into one big](/home/matthes/Projects/leanear-docs/openmenu)

## List available Fonts

See all installed fonts with `fc-list`

## Default configuration

