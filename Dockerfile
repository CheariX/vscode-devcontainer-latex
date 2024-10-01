FROM mcr.microsoft.com/vscode/devcontainers/base:debian

# [Optional] Uncomment this section to install additional packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends default-jdk pandoc python3-pip texlive texlive-science texlive-latex-extra texlive-extra-utils texlive-fonts-extra texlive-bibtex-extra texlive-lang-german texlive-xetex lmodern biber latexmk make git git-lfs procps locales curl neovim

# RUN pip3 install Pygments
RUN rm -rf /var/lib/apt/lists/*