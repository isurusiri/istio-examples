#!/bin/bash

function createNamespace() {
    kubectl apply -f configs/demo-services/namespace.yaml
}
