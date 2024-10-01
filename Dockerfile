FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends openjdk-21-jdk pandoc python3-pip texlive texlive-science texlive-latex-extra texlive-extra-utils texlive-fonts-extra texlive-bibtex-extra texlive-lang-german texlive-xetex lmodern biber latexmk make git git-lfs procps locales curl neovim

RUN rm -rf /var/lib/apt/lists/*