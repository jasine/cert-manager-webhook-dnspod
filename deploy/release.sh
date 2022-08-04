#!/bin/bash
helm package ./cert-manager-webhook-dnspod
mv ./*.tgz ../docs/
cd ../docs && helm repo index --url https://jasine.github.io/cert-manager-webhook-dnspod/ .
cd ../deploy
