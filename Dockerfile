FROM mcr.microsoft.com/vscode/devcontainers/base:debian

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        biber \
        curl \
        default-jdk \
        git \
        git-lfs \
        hunspell \
        hunspell-de-de \
        hunspell-tools \
        latexmk \
        libhunspell-dev \
        lmodern \
        locales \
        make \
        neovim \
        pandoc \
        procps \
        python3-pip \
        python3-pygments \
        texlive \
        texlive-bibtex-extra \
        texlive-extra-utils \
        texlive-fonts-extra \
        texlive-lang-german \
        texlive-latex-extra \
        texlive-science \
        texlive-xetex \
    && rm -rf /var/lib/apt/lists/*

# RUN pip3 install Pygments

ENV JAVA_HOME /usr/lib/jvm/default-java