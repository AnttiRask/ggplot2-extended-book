#!/bin/bash

# Download the Quarto binary
wget -qO- "https://github.com/quarto-dev/quarto-cli/releases/download/v1.0.32/quarto-1.0.32-linux-amd64.deb" > quarto.deb

# Install Quarto without sudo
dpkg -x quarto.deb $HOME

# Add Quarto to PATH
export PATH=$HOME/usr/bin:$PATH

# Verify Quarto installation
quarto --version

# Render the book
quarto render index.qmd