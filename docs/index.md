# cert-manager-webhook-dnspod

## Prerequisites

* [cert-manager](https://github.com/jetstack/cert-manager) >= 0.11
    - [Installing on Kubernetes](https://docs.cert-manager.io/en/release-0.11/getting-started/install/kubernetes.html)

*Note: use version < 0.3 with cert-manager < 0.11*

## Installation

Generate API ID and API Token from DNSPod (https://support.dnspod.cn/Kb/showarticle/tsid/227/).

```console
helm repo add cert-manager-webhook-dnspod https://jasine.github.io/cert-manager-webhook-dnspod
helm install cert-manager-webhook-dnspod cert-manager-webhook-dnspod/cert-manager-webhook-dnspod \
    --set groupName=<GROUP_NAME> \
    --set secrets.apiID=<DNSPOD_API_ID>,secrets.apiToken=<DNSPOD_API_TOKEN> \
    --set clusterIssuer.enabled=true,clusterIssuer.email=<EMAIL_ADDRESS>
```

### Automatically creating Certificates for Ingress resources

See [this](https://cert-manager.io/docs/usage/ingress/#optional-configuration).

