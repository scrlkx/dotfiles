#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s -f  ${BASEDIR}/aliases ~/.aliases
ln -s -f ${BASEDIR}/gitconfig ~/.gitconfig
ln -s -f ${BASEDIR}/functions ~/.functions
ln -s -f  ${BASEDIR}/hyper.js ~/.hyper.js
ln -s -f  ${BASEDIR}/localrc ~/.localrc
ln -s -f  ${BASEDIR}/zshrc ~/.zshrc
