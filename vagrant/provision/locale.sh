#!/bin/bash

# script pra configurar linguagem(pt-BR)
# e horário(America/Campo_Grande GMT -4)

echo 'pt_BR.UTF-8 UTF-8' > /var/lib/locales/supported.d/local
echo 'pt_BR.ISO-8859-1 ISO-8859-1' >> /var/lib/locales/supported.d/local
echo 'pt_BR.UTF-8 UTF-8' > /var/lib/locales/supported.d/pt
echo 'pt_BR.ISO-8859-1 ISO-8859-1' >> /var/lib/locales/supported.d/pt

echo 'LANG="pt_BR.UTF-8"' > /etc/default/locale
echo 'LANGUAGE="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_MESSAGES="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_CTYPE="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_COLLATE="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_ALL="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_NUMERIC="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_TIME="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_MONETARY="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_PAPER="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_NAME="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_ADDRESS="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_TELEPHONE="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_MEASUREMENT="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_IDENTIFICATION="pt_BR.UTF-8"' >> /etc/default/locale
echo 'LC_ALL="pt_BR.UTF-8"' >> /etc/default/locale

sudo apt-get --yes --force-yes install language-pack-pt language-pack-pt-base language-pack-gnome-pt language-pack-gnome-pt-base language-pack-kde-pt language-pack-kde-pt-base

dpkg-reconfigure locales

sudo su -c ". /etc/default/locale"

echo 'America/Campo_Grande' > /etc/timezone
sudo dpkg-reconfigure --frontend noninteractive tzdata

sudo timedatectl set-timezone America/Campo_Grande

