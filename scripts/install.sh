#!/bin/bash

# ---------------------------------------------------------
# Section: Setup Istio
# ---------------------------------------------------------

curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.6.8 TARGET_ARCH=x86_64 sh -
cd istio-1.8.1
export PATH=$PWD/bin:$PATH

istioctl install --set profile=demo -y

# ---------------------------------------------------------
# Section: Load resource specific scripts
# ---------------------------------------------------------
source ./namespace.sh
source ./peer-auth.sh


# ---------------------------------------------------------
# Section: Namespaces
# ---------------------------------------------------------
createNamespace

# ---------------------------------------------------------
# Section: Istio mTLS
# ---------------------------------------------------------
setupPeerAuth
