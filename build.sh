#!/bin/bash

# Specify the Quarto version
QUARTO_VERSION="0.9.532"

# Download the Quarto tarball for Linux
wget "https://github.com/quarto-dev/quarto-cli/releases/download/v$QUARTO_VERSION/quarto-$QUARTO_VERSION-linux-amd64.tar.gz"

# Extract the Quarto tarball
tar -xzf "quarto-$QUARTO_VERSION-linux-amd64.tar.gz"

# Add the Quarto bin directory to the PATH
export PATH=$PWD/quarto-$QUARTO_VERSION/bin:$PATH

# Verify Quarto installation
quarto --version

# Render the book
quarto render index.qmd
