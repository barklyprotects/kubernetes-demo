#!/bin/bash

export KUBERNETES_PROVIDER=aws
wget -q -O - https://get.k8s.io | bash

ROOT=$(
  unset CDPATH
  root=$(dirname "${BASH_SOURCE}")
  cd "${root}"
  pwd
)

os=$(uname)

case $os in
Darwin)
  the_os="darwin"
  ;;
Linux)
  the_os="linux"
  ;;
*)
  echo "Current OS: Undectected. Failing"
  exit 1
  ;;
esac

# Add Kubectl to your path for the current shell.
export PATH=$ROOT/kubernetes/platforms/$the_os/amd64:$PATH
