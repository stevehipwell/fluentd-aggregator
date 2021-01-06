# Fluentd Aggregator

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

A [Fluentd](https://www.fluentd.org/) _Docker_ image to be used for log aggregation and based on the official _v1.11_ [Fluentd Docker image](https://github.com/fluent/fluentd-docker-image).

## Aggregation Changes

To optimise _Fluentd_ for log aggregation the default `fluent.conf` file has been overwritten to allow logs to be forwarded and printed to stdout. Plugins have also been added to support the aggregation role.

### Plugins

The following plugins have been added to the base image.

- [fluent-plugin-concat](https://github.com/fluent-plugins-nursery/fluent-plugin-concat)
- [fluent-plugin-elasticsearch](https://docs.fluentd.org/output/elasticsearch)
- [fluent-plugin-grafana-loki](https://github.com/grafana/loki/tree/master/cmd/fluentd)
- [fluent-plugin-prometheus](https://github.com/fluent/fluent-plugin-prometheus)
- [fluent-plugin-s3](https://docs.fluentd.org/output/s3)
- [fluent-plugin-sqs](https://github.com/ixixi/fluent-plugin-sqs)

## Usage

This image is available at [Docker Hub](https://hub.docker.com/r/stevehipwellt/fluentd-aggregator) and [GitHub](https://github.com/users/stevehipwell/packages/container/package/fluentd-aggregator). This image uses [Semantic Versioning 2.0.0](https://semver.org/) with the major and minor version matching the _Fluentd_ major and minor versions and the patch reserved for image changes.

This image can be pulled from the following two repositories.

```shell
docker pull stevehipwell/fluentd-aggregator:latest
docker pull stevehipwell/fluentd-aggregator:v1.11
docker pull stevehipwell/fluentd-aggregator:v1.11.0

docker pull ghcr.io/stevehipwell/fluentd-aggregator:latest
docker pull ghcr.io/stevehipwell/fluentd-aggregator:v1.11
docker pull stevehipwell/fluentd-aggregator:v1.11.0
```

This image can be tested by running the following command and then forwarding logs.

```shell
docker run -p 24224:24224 stevehipwell/fluentd-aggregator:latest
```

## License

[Apache License, Version 2.0](./LICENSE).
