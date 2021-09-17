#!/bin/bash

# Install Go
wget https://golang.org/dl/go1.17.1.linux-amd64.tar.gz
tar -xf go1.17.1.linux-amd64.tar.gz


rm -rf /home/sandbox/software
mkdir /home/sandbox/software
mv go /home/sandbox/software
mkdir /home/sandbox/software/gopackages

# Written environment variable to the .temp_env files
touch  .temp_env
cat > .temp_env <<EOF
GO111MODULE=auto
HOME_DIR=/home/sandbox/software
GOROOT=\$HOME_DIR/go
GOPATH=\$HOME_DIR/gopackages
PATH=\$GOROOT/bin:\$PATH
EOF

# Let it take effect
source .temp_env
