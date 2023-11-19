#!/bin/bash

MY_NAME=${MY_NAME:-"Kamila Kapinos"}
APP_URL=${APP_URL:-"https://github.com/Kamila-Kapinos/e-commerce/releases/download/v1.11/my-ecommerce-0.1.jar"}
APP_DIR=/opt/ecommerce

## https://github.com/jkanclerz/computer-programming-4/releases/download/v1.29/my-ecommerce-0.1.jar
## https://github.com/Kamila-Kapinos/e-commerce/releases/download/v1.11/my-ecommerce-0.1.jar
echo "hello ${MY_NAME}"

PACKAGES_TO_BE_INSTALLED="mc cowsay tree"
dnf install -y -q ${PACKAGES_TO_BE_INSTALLED}

## Install java
dnf install -y java-17-amazon-corretto

mkdir -p ${APP_DIR}

## install .jar

wget ${APP_URL} -O ${APP_DIR}/app.jar

# java -Dservwe.port=80 -jar ${APP_DIR}/app.jar


cowsay "it works"