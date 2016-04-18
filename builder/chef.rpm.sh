#!/bin/bash

CHANNEL=stable
MAJOR=7

cat > /etc/yum.repos.d/chef-$CHANNEL.repo <<EOL
[chef-$CHANNEL]
name=chef-$CHANNEL
baseurl=https://packages.chef.io/$CHANNEL-yum/el/$MAJOR/\$basearch/
gpgcheck=1
enabled=1
EOL
