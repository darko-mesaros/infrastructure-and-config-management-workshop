#!/bin/bash

git config --global user.name "Darko Meszaros"
git config --global user.email dmeszaro@amazon.de

git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true
