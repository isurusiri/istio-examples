#!/bin/bash

curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.6.8 TARGET_ARCH=x86_64 sh -
cd istio-1.8.1
export PATH=$PWD/bin:$PATH

istioctl install --set profile=demo -y

