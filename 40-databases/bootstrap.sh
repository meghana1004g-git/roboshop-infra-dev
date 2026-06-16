#!/bin/bash

component=$1

dnf install ansible -y

cd /home/ec2-user

if [ ! -d ansible-roboshop-roles.tf ]; then
    git clone https://github.com/meghana1004g-git/ansible-roboshop-roles.tf.git
fi

cd ansible-roboshop-roles.tf
git pull

ansible-playbook -e component=$component roboshop.yaml