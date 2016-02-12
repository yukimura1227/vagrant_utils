#!/bin/bash

GEM_PATH="/usr/local/rbenv/shims/gem"

echo "stop iptables..."
sudo service iptables stop

echo "installing sqlite-devel..."
sudo yum install sqlite-devel -y

echo "installing gcc-c++..."
sudo yum install gcc-c++ -y

echo "${GEM_PATH} install rails..."
${GEM_PATH} install --no-document rails -v '4.1.1'


