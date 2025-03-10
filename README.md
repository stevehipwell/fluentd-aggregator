# Fluentd Aggregator

![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/stevehipwell/fluentd-aggregator?sort=semver)
![Build](https://github.com/stevehipwell/fluentd-aggregator/actions/workflows/build.yaml/badge.svg?branch=main)\
![linux](https://img.shields.io/badge/os-linux-brightgreen)
![amd64](https://img.shields.io/badge/arch-amd64-brightgreen)
![arm64](https://img.shields.io/badge/arch-arm64-brightgreen)
[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

A [Fluentd](https://www.fluentd.org/) [OCI](https://opencontainers.org/) image to be used for log aggregation and based on the official [Fluentd Docker image](https://github.com/fluent/fluentd-docker-image) rebuilt as a multi-arch `linux/amd64` & `linux/arm64` image.

## Aggregation Changes

To optimize _Fluentd_ for log aggregation the default `fluent.conf` file has been overwritten to allow logs to be forwarded and printed to `stdout`, an additional directory `/fluentd/state` has been created, and plugins have also been added to support the aggregation role.

### Versioning

As of `v2.0.0` this image will follow [semantic versioning](https://semver.org/) so the base Fluentd version will not be directly tracked.

### Plugins

The following plugins have been added to the base image, to see the specific version please look in the [Gemfile](./Gemfile).

- [fluent-plugin-azure-loganalytics](https://github.com/yokawasa/fluent-plugin-azure-loganalytics)
- [fluent-plugin-azurestorage-gen2](https://github.com/oleewere/fluent-plugin-azurestorage-gen2)
- [fluent-plugin-cloudwatch-logs](https://github.com/fluent-plugins-nursery/fluent-plugin-cloudwatch-logs)
- [fluent-plugin-concat](https://github.com/fluent-plugins-nursery/fluent-plugin-concat)
- [fluent-plugin-datadog](https://github.com/DataDog/fluent-plugin-datadog)
- [fluent-plugin-elasticsearch](https://docs.fluentd.org/output/elasticsearch)
- [fluent-plugin-grafana-loki](https://github.com/grafana/loki/tree/main/clients/cmd/fluentd)
- [fluent-plugin-kafka](https://github.com/fluent/fluent-plugin-kafka)
- [fluent-plugin-opensearch](https://github.com/fluent/fluent-plugin-opensearch)
- [fluent-plugin-prometheus](https://github.com/fluent/fluent-plugin-prometheus)
- [fluent-plugin-record-modifier](https://github.com/repeatedly/fluent-plugin-record-modifier)
- [fluent-plugin-rewrite-tag-filter](https://github.com/fluent/fluent-plugin-rewrite-tag-filter)
- [fluent-plugin-route](https://github.com/tagomoris/fluent-plugin-route)
- [fluent-plugin-s3](https://docs.fluentd.org/output/s3)
- [fluent-plugin-sqs](https://github.com/ixixi/fluent-plugin-sqs)

## Usage

This image is available from [GHCR](https://github.com/users/stevehipwell/packages/container/package/fluentd-aggregator) and is used in the [fluentd-aggregator](https://artifacthub.io/packages/helm/stevehipwell-helm-charts-fluentd-aggregator/fluentd-aggregator) Helm chart. You can pull this image with the following command.

```shell
docker pull ghcr.io/stevehipwell/fluentd-aggregator:latest
```

This image can be tested locally by running the following command and then forwarding logs to it.

```shell
docker run -p 24224:24224 ghcr.io/stevehipwell/fluentd-aggregator:latest
```

## Validation

To validate the image signature run the following commands.

```shell
cosign verify ghcr.io/stevehipwell/fluentd-aggregator:latest --certificate-oidc-issuer "https://token.actions.githubusercontent.com" --certificate-identity-regexp "https://github.com/action-stars/build-workflows/.github/workflows/build-oci-image.yaml.+" | jq .
```

To validate the the image build provenance run the following command.

```shell
gh attestation verify --repo stevehipwell/fluentd-aggregator --signer-workflow action-stars/build-workflows/.github/workflows/build-oci-image.yaml oci://ghcr.io/stevehipwell/fluentd-aggregator:latest
```

You can validate image SBOM by running the following commands.

```shell
digest="$(crane digest --platform="linux/amd64" ghcr.io/stevehipwell/fluentd-aggregator:latest)"
gh attestation verify --repo stevehipwell/fluentd-aggregator --signer-workflow action-stars/build-workflows/.github/workflows/build-oci-image.yaml --predicate-type https://spdx.dev/Document/v2.3 "oci://ghcr.io/stevehipwell/fluentd-aggregator@${digest}"
```

## License

[Apache License, Version 2.0](./LICENSE).
