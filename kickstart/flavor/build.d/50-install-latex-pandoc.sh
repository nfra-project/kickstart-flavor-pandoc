#!/bin/bash


set -e

apt-get -y install texlive-bibtex-extra texlive-latex-extra texlive-xetex \
    biber librsvg2-bin pandoc pandoc-citeproc \
    pip plantuml  fonts-ubuntu inotify-tools texlive-lang-german texlive-lang-english poppler-utils \
    php8.4 php8.4-curl php8.4-http php8.4-raphf php8.4-yaml composer npm nodejs

# PlantUML istalls Java! -> big

sudo -u user pip install \
    pandoc-tablenos pandoc-fignos pandoc-eqnos pandoc-secnos pandoc-xnos \
    pandoc-plantuml-filter \
    --user

# Install PI Coding Agent
npm install -g @earendil-works/pi-coding-agent
# Install Tools for pi
sudo apt install -y ripgrep fd-find



# Allow access to composer global install scripts
echo 'export PATH="$PATH:$WORKDIR/vendor/bin:$PATH:/home/user/.local/bin:$WORKDIR/node_modules/.bin:"' >> /etc/kick_bashrc.d/path

touch /home/user/.bashrc.kickstart
chmod 755 /home/user/.bashrc.kickstart

echo ". /home/user/.bashrc.kickstart" >> /home/user/.bashrc
