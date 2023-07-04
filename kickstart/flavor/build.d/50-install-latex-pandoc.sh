#!/bin/bash


set -e

apt-get -y install texlive-bibtex-extra texlive-latex-extra texlive-xetex \
    biber librsvg2-bin pandoc pandoc-citeproc \
    pip plantuml  fonts-ubuntu inotify-tools texlive-lang-german texlive-lang-english poppler-utils \
    php8.1 php8.1-curl php8.1-http php8.1-raphf php8.1-yaml composer

# PlantUML istalls Java! -> big

sudo -u user pip install \
    pandoc-tablenos pandoc-fignos pandoc-eqnos pandoc-secnos pandoc-xnos \
    pandoc-plantuml-filter \
    --user


# Allow access to composer global install scripts
echo 'export PATH="$PATH:/home/user/.local/bin:$WORKDIR/node_modules/.bin:"' >> /etc/kick_bashrc.d/path

touch /home/user/.bashrc.kickstart
chmod 755 /home/user/.bashrc.kickstart

echo ". /home/user/.bashrc.kickstart" >> /home/user/.bashrc
