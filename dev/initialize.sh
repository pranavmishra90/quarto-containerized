#!/bin/bash

# Install pre-commit
wget -O $HOME/git/pre-commit/pre-commit-3.pyz https://github.com/pre-commit/pre-commit/releases/download/v3.2.2/pre-commit-3.2.2.pyz

alias pre-commit='python3 $HOME/git/pre-commit/pre-commit-3.pyz'

pre-commit install --allow-missing-config