#!/bin/bash


set -e

apt-get update

apt-get -y install texlive-bibtex-extra biber librsvg2-bin



# Allow access to composer global install scripts
echo 'export PATH="$PATH:/opt/bin:/opt/vendor/bin:/home/user/.config/composer/vendor/bin:$WORKDIR/node_modules/.bin:"' >> /home/user/.bashrc

touch /home/user/.bashrc.kickstart
chmod 755 /home/user/.bashrc.kickstart

echo ". /home/user/.bashrc.kickstart" >> /home/user/.bashrc
