#!/bin/bash

set -e -x

(cd $TMPDIR
rm -drf infinispan-openshift-templates
git clone https://github.com/infinispan/infinispan-openshift-templates
cd infinispan-openshift-templates
git checkout streaming_data_workshop
make stop-openshift
make start-openshift-with-catalog install-templates)
