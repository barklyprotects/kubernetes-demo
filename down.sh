#!/bin/bash

export KUBERNETES_PROVIDER=aws

ROOT=$(
  unset CDPATH
  root=$(dirname "${BASH_SOURCE}")
  cd "${root}"
  pwd
)

$ROOT/kubernetes/cluster/kube-down.sh
