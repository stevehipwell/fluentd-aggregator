# Fluentd Aggregator

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

A [Fluentd](https://www.fluentd.org/) _Docker_ image to be used for log aggregation and based on the official [Fluentd Docker image](https://github.com/fluent/fluentd-docker-image).

## Aggregation Changes

To optimise _Fluentd_ for log aggregation the default `fluent.conf` file has been overwritten to allow logs to be forwarded and printed to stdout. Plugins have also been added to support the aggregation role.

### Plugins

The following plugins have been added to the base image.

- [fluent-plugin-aws-elasticsearch-service](https://github.com/atomita/fluent-plugin-aws-elasticsearch-service)
- [fluent-plugin-azure-storage-append-blob-lts](https://github.com/elsesiy/fluent-plugin-azure-storage-append-blob-lts)
- [fluent-plugin-azurestorage-gen2](https://github.com/oleewere/fluent-plugin-azurestorage-gen2)
- [fluent-plugin-concat](https://github.com/fluent-plugins-nursery/fluent-plugin-concat)
- [fluent-plugin-datadog](https://github.com/DataDog/fluent-plugin-datadog)
- [fluent-plugin-elasticsearch](https://docs.fluentd.org/output/elasticsearch)
- [fluent-plugin-grafana-loki](https://github.com/grafana/loki/tree/master/cmd/fluentd)
- [fluent-plugin-prometheus](https://github.com/fluent/fluent-plugin-prometheus)
- [fluent-plugin-record-modifier](https://github.com/repeatedly/fluent-plugin-record-modifier)
- [fluent-plugin-rewrite-tag-filter](https://github.com/fluent/fluent-plugin-rewrite-tag-filter)
- [fluent-plugin-route](https://github.com/tagomoris/fluent-plugin-route)
- [fluent-plugin-s3](https://docs.fluentd.org/output/s3)
- [fluent-plugin-sqs](https://github.com/ixixi/fluent-plugin-sqs)

## Usage

This image is available at [Docker Hub](https://hub.docker.com/r/stevehipwellt/fluentd-aggregator) and [GitHub](https://github.com/users/stevehipwell/packages/container/package/fluentd-aggregator). The image version matches the _Fluentd_ version.

This image can be pulled from the following two repositories.

```shell
docker pull stevehipwell/fluentd-aggregator:latest

docker pull ghcr.io/stevehipwell/fluentd-aggregator:latest
```

This image can be tested by running the following command and then forwarding logs.

```shell
docker run -p 24224:24224 stevehipwell/fluentd-aggregator:latest
```

## License

[Apache License, Version 2.0](./LICENSE).
