#!/bin/bash
# Install Quarto
wget -qO- "https://github.com/quarto-dev/quarto-cli/releases/download/v1.3.450/quarto-1.3.450-linux-amd64.deb" | sudo dpkg -i -
# Render the book
quarto render index.qmd

