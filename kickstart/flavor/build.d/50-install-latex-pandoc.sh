#!/bin/bash


set -e

apt-get -y install texlive-bibtex-extra texlive-latex-extra texlive-xetex \
    biber librsvg2-bin pandoc pandoc-citeproc \
    pip plantuml  fonts-ubuntu

# PlantUML istalls Java! -> big

sudo -u user pip install \
    pandoc-tablenos pandoc-fignos pandoc-eqnos pandoc-secnos pandoc-xnos \
    pandoc-plantuml-filter \
    --user


# Allow access to composer global install scripts
echo 'export PATH="$PATH:/opt/bin:/opt/vendor/bin:/home/user/.config/composer/vendor/bin:/home/user/.local/bin:$WORKDIR/node_modules/.bin:"' >> /home/user/.bashrc

touch /home/user/.bashrc.kickstart
chmod 755 /home/user/.bashrc.kickstart

echo ". /home/user/.bashrc.kickstart" >> /home/user/.bashrc
