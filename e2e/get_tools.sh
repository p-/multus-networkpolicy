#!/bin/sh
set -o errexit

if [ ! -d bin ]; then
	mkdir bin
fi

curl -Lo ./bin/kind "https://github.com/kubernetes-sigs/kind/releases/download/v0.15.0/kind-$(uname)-amd64"
chmod +x ./bin/kind
curl -Lo ./bin/kubectl https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./bin/kubectl
curl -Lo ./bin/jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
chmod +x ./bin/jq
