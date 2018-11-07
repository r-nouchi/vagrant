#!/usr/bin/env bash

set -eux

if ! [ `which ansible` ]; then
  sudo yum install -yq epel-release
  sudo yum install -yq ansible sshpass
fi

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml