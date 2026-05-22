#!/bin/bash


set -e

apt-get -y install texlive-bibtex-extra texlive-latex-extra texlive-xetex \
    biber librsvg2-bin pandoc \
    pip plantuml  fonts-ubuntu inotify-tools texlive-lang-german texlive-lang-english poppler-utils \
    php php-curl php-http php-raphf php-yaml composer npm nodejs

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
