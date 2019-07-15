#!/bin/bash

enviroment="export PATH=\$PATH:/vagrant/apache/apache/vendor/bin"

sudo rm -rf "/etc/profile.d/apache_env.sh"

sudo echo -e $enviroment > "/etc/profile.d/apache_env.sh"
