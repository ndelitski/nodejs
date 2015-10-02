#!/bin/bash

set -e

shortName='nodejs'
name='quay.io/ndelitski/nodejs'
version='4.1'

#docker build -t $name --rm ./
#docker tag ${name} ${name}:${version}
docker push ${name}:${version}
