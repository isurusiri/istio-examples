#!/bin/bash

function setupPeerAuth() {
    kubectl apply -f configs/mtls/peer-authentication.yaml
}
