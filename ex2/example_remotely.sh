#!/bin/bash

MY_NAME=${MY_NAME:-"Kamila Kapinos"}

echo "hello ${MY_NAME}"

PACKAGES_TO_BE_INSTALLED="mc cowsay tree"
dnf install -y ${PACKAGES_TO_BE_INSTALLED}

## Install java
dnf install -y java-17-amazon-corretto

mkdir -p /opt/ecommerce

## install .jar



cowsay "it works"