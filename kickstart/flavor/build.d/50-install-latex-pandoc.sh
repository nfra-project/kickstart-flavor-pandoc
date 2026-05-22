#!/bin/bash


set -e

apt-get -y install texlive-bibtex-extra texlive-latex-extra texlive-xetex \
    biber librsvg2-bin pandoc \
    pip plantuml  fonts-ubuntu inotify-tools texlive-lang-german texlive-lang-english  poppler-utils \
    php php-curl php-http php-raphf php-yaml composer npm nodejs \
    pandoc-plantuml-filter pampi pandoc-data



# Install PI Coding Agent
npm install -g @earendil-works/pi-coding-agent
# Install Tools for pi
sudo apt install -y ripgrep fd-find
pi install npm:pi-web-access
pi install npm:pi-subagents

# Allow access to composer global install scripts
echo 'export PATH="$PATH:$WORKDIR/vendor/bin:$PATH:/home/user/.local/bin:$WORKDIR/node_modules/.bin:"' >> /etc/kick_bashrc.d/path

touch /home/user/.bashrc.kickstart
chmod 755 /home/user/.bashrc.kickstart

echo ". /home/user/.bashrc.kickstart" >> /home/user/.bashrc
echo 'export OPENAI_API_KEY="$(cat /var/run/secrets/open_ai 2>/dev/null || true)"' >> /home/user/.bashrc

## Ubuntu 23.04 -> change user ubuntu to uid 999
usermod -u 999 ubuntu