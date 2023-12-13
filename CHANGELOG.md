# Fluentd Aggregator Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

<!--
### Added - For new features.
### Changed - For changes in existing functionality.
### Deprecated - For soon-to-be removed features.
### Removed - For now removed features.
### Fixed - For any bug fixes.
### Security - In case of vulnerabilities.
-->

## [UNRELEASED]

## [v2.10.2] - 2023-12-13

### Changed

- Updated [oj](https://rubygems.org/gems/oj) Gem from `3.16.1` to `3.16.3`.
- Updated [json](https://rubygems.org/gems/json) Gem from `2.7.0` to `2.7.1`.
- Updated [fluent-plugin-elasticsearch](https://rubygems.org/gems/fluent-plugin-elasticsearch) Gem from `5.4.1` to `5.4.2`.
- Updated [fluent-plugin-record-modifier](https://rubygems.org/gems/fluent-plugin-record-modifier) Gem from `2.1.1` to `2.2.0`.

## [v2.10.1] - 2023-12-07

### Changed

- Updated [fluent-plugin-elasticsearch](https://rubygems.org/gems/fluent-plugin-elasticsearch) Gem from `5.4.0` to `5.4.1`.
- Updated [json](https://rubygems.org/gems/json) from `2.6.3` to `2.7.0`.

## [v2.10.0] - 2023-11-23

### Changed

- Updated [Fluentd](https://rubygems.org/gems/fluentd) to [v1.16.3](https://github.com/fluent/fluentd/releases/tag/v1.16.3).
- Updated [fluent-plugin-elasticsearch](https://rubygems.org/gems/fluent-plugin-elasticsearch) Gem from `5.3.0` to `5.4.0`.
- Updated [fluent-plugin-kafka](https://github.com/fluent/fluent-plugin-kafka) from `0.19.0` to `0.19.2`.
- Updated [fluent-plugin-opensearch](https://rubygems.org/gems/fluent-plugin-opensearch) from `v1.1.1` to `v1.1.4`.
- Updated [libxml-ruby](https://github.com/xml4r/libxml-ruby) Gem from `v4.1.1` to `v4.1.2`.
- Updated [oj](https://rubygems.org/gems/oj) from `v3.15.0` to `v3.16.1`.
- Updated [async-http](https://rubygems.org/gems/async-http) from `v0.60.2` to `v0.61.0`.
- Updated _Alpine_ OCI base image digest to latest.
- Updated _Debian_ OCI base image digest to latest.

## [v2.9.3] - 2023-06-23

### Added

- Added support for creating the temporary directory defined by `TMPDIR` if it doesn't exist.

## [v2.9.2] - 2023-06-22

### Changed

- Updated [fluent-plugin-prometheus](https://rubygems.org/gems/fluent-plugin-prometheus/) from `v2.0.3` to `v2.1.0`.
- Updated [async-http](https://rubygems.org/gems/async-http) from `v0.60.1` to `v0.60.2`.
- Updated [fluent-plugin-opensearch](https://rubygems.org/gems/fluent-plugin-opensearch) from `v1.1.0` to `v1.1.1`.

## [v2.9.1] - 2023-06-08

### Changed

- Updated [fluent-plugin-azurestorage-gen2](https://github.com/oleewere/fluent-plugin-azurestorage-gen2) from `v0.3.3` to `v0.3.5`.

## [v2.9.0] - 2023-06-07

### Added

- Added `libcurl4` to the `glibc` image version.

### Changed

- Updated _Fluentd_ to [v1.16.1](https://github.com/fluent/fluentd/releases/tag/v1.16.1).
- Updated [fluent-plugin-opensearch](https://rubygems.org/gems/fluent-plugin-opensearch) from `v1.0.10` to `v1.1.0`.
- Updated [fluent-plugin-elasticsearch](https://rubygems.org/gems/fluent-plugin-elasticsearch) Gem from `5.2.5` to `5.3.0`.
- Updated [libxml-ruby](https://github.com/xml4r/libxml-ruby) Gem from `v4.0.0` to `v4.1.1`.
- Updated [oj](https://rubygems.org/gems/oj) from `v3.14.2` to `v3.15.0`.
- Updated [fluent-plugin-kafka](https://github.com/fluent/fluent-plugin-kafka) from `0.18.1` to `0.19.0`.
- Updated [Ruby](https://hub.docker.com/_/ruby) OCI image to `v3.2.2`.

## [v2.8.0] - 2023-03-29

### All Changes

- Updated _Fluentd_ to [v1.16.0](https://github.com/fluent/fluentd/releases/tag/v1.16.0).
- Updated OCI base image digests to latest.
- Updated [fluent-plugin-elasticsearch](https://rubygems.org/gems/fluent-plugin-elasticsearch) Gem from `5.2.4` to `5.2.5`.

## [v2.7.0] - 2023-03-16

### All Changes

- Added additional `glibc` variant and refer to current Alpine version as `musl` variant.
- Changed Alpine base image to official Ruby image.
- Changed Dockerfile pattern.
- Updated [async](https://rubygems.org/gems/async) Gem from `v1.30.3` to `v1.31.0`.

## [v2.6.2] - 2023-02-15

### All Changes

- Updated [Alpine](https://www.alpinelinux.org/) base image from `v3.17.1` to `v3.17.2`.
- Updated [fluent-plugin-opensearch](https://rubygems.org/gems/fluent-plugin-opensearch) from `v1.0.9` to `v1.0.10`.
- Updated [fluent-plugin-grafana-loki](https://rubygems.org/gems/fluent-plugin-grafana-loki) from `v1.2.18` to `v1.2.20`.
- Updated [oj](https://rubygems.org/gems/oj) from `v3.14.1` to `v3.14.2`.

## [v2.6.1] - 2013-02-06

### All Changes

- Updated [async-http](https://github.com/socketry/async-http) Gem from `v0.59.4` to `v0.60.1`.
- Updated [oj](https://github.com/ohler55/oj) from `v3.13.23` to `v3.14.1`.

## [v2.6.0] - 2023-01-10

### All Changes

- Updated [Alpine](https://www.alpinelinux.org/) base image from `v3.17.0` to `v3.17.1`.
- Updated [async-http](https://github.com/socketry/async-http) Gem from `v0.59.3` to `v0.59.4`.
- Updated [libxml-ruby](https://github.com/xml4r/libxml-ruby) Gem from `v3.2.4` to `v4.0.0`.

## [v2.5.0] - 2022-12-06

### All Changes

- Updated `json` from `v2.6.2` to `v2.6.3`.
- Added `libxml-ruby` to support AWS gems.

## [v2.4.0] - 2022-11-28

### All Changes

- Updated _Alpine_ to `v3.17.0`.
- Updated `fluent-plugin-opensearch` to `v1.0.9`.

## [v2.3.0] - 2022-11-14

### All Changes

- Updated _Alpine_ to `v3.16.3`.
- Updated `async-http` to `v0.59.3`.
- Updated `oj` to `v3.13.23`.

## [v2.2.0] - 2022-11-02

### All Changes

- Updated _Fluentd_ to [v1.15.3](https://github.com/fluent/fluentd/releases/tag/v1.15.3).
- Updated `fluent-plugin-elasticsearch` to `v5.2.4`.
- Updated `fluent-plugin-s3` to `v1.7.2`.
- Updated `async-http` to `v0.59.2`.
- Updated `oj` to `v3.13.22`.

## [v2.1.0] - 2022-10-25

### All Changes

- Changed to use explicit base image version and Dependabot to manage the updates.
- Changed to use Bundler to install the Gems and Dependabot to manage the updates.
- Changed default label in configuration to `@DEFAULT` as idiomatically it should be uppercase.

## [v2.0.0] - 2022-09-15

> **Warning**
> The _ElasticSearch_ plugin and libraries have been updated to the latest version so AWS users will need to be using _OpenSearch_.

### Highlights

- The _Fluentd_ version has been updated from `v1.14` to `v1.15` (releases [v1.15.0](https://www.fluentd.org/blog/fluentd-v1.15.0-has-been-released), [v1.15.1](https://www.fluentd.org/blog/fluentd-v1.15.1-has-been-released) & [v1.15.2](https://www.fluentd.org/blog/fluentd-v1.15.2-has-been-released)).
- This image now follows semantic versioning and is decoupled from the _Fluentd_ release cycle and versioning constraints.
- Plugin versions will now be strictly versioned.

### All Changes

- Updated _Fluentd_ to [v1.15.2](https://github.com/fluent/fluentd/releases/tag/v1.15.2).
- Changed versioning strategy to decouple from _Fluentd_ releases.
- Changed plugin installation to explicitly set the version.
- Changed default configuration to make it simpler.
- Added explicit UID & GID to `fluent` user of `2000`.
- Added `/fluentd/state` directory.
- Removed _ElasticSearch_ locking to continue supporting AWS version.
- Removed setting `RUBY_GC_HEAP_OLDOBJECT_LIMIT_FACTOR`.

## [v1.14.10] - 2022-05-03

### Added

- Added support for [fluent-plugin-kafka](https://github.com/fluent/fluent-plugin-kafka).

## [v1.14.9] - 2022-04-01

### Changed

- Updated _Fluentd_ image to [v1.14.6](https://github.com/fluent/fluentd/releases/tag/v1.14.6).

## [v1.14.8] - 2022-02-10

### Added

- Added ARM64 support via building image from scratch.

## [v1.14.7] - 2022-02-09

### Changed

- Updated _Fluentd_ image to [v1.14.5](https://github.com/fluent/fluentd/releases/tag/v1.14.5).

## [v1.14.6] - 2022-01-13

### Added

- [fluent-plugin-opensearch](https://github.com/fluent/fluent-plugin-opensearch)

## [v1.14.5] - 2022-01-06

### Changed

- Updated _Fluentd_ image to [v1.14.4](https://github.com/fluent/fluentd/blob/master/CHANGELOG.md#v1144).

## [v1.14.4] - 2021-11-29

### Changed

- Updated _Fluentd_ image to [v1.14.3](https://github.com/fluent/fluentd/blob/master/CHANGELOG.md#v1143).

## [v1.14.3] - 2021-10-29

### Changed

- Updated _Fluentd_ image to [v1.14.2](https://github.com/fluent/fluentd/blob/master/CHANGELOG.md#release-v1142---20211029).

## [v1.14.2] - 2021-10-28

### Added

- New plugin [fluent-plugin-cloudwatch-logs](https://github.com/fluent-plugins-nursery/fluent-plugin-cloudwatch-logs).

### Changed

- Pinned _Elasticsearch_ gems to `v7.13.3` to make _AWS Elasticsearch Service_ continue to work.

## [v1.14.1] - 2021-10-04

### Changed

- Updated _Fluentd_ image to [v1.14.1](https://github.com/fluent/fluentd/blob/master/CHANGELOG.md#release-v1141---20210929).

## [v1.14.0] - 2021-08-31

### Changed

- Updated _Fluentd_ image to [v1.14.0](https://github.com/fluent/fluentd/blob/master/CHANGELOG.md#release-v1140---20210830).

## [v1.13.3] - 2021-07-27

### Changed

- Updated _Fluentd_ image to [v1.13.3](https://github.com/fluent/fluentd/blob/master/CHANGELOG.md#release-v1133---20210727).

## [v1.13.2] - 2021-07-13

### Changed

- Updated _Fluentd_ image to [v1.13.2](https://github.com/fluent/fluentd/blob/master/CHANGELOG.md#release-v1132---20210712).

## [v1.13.1] - 2021-07-01

### Changed

- Updated _Fluentd_ image to [v1.13.1](https://github.com/fluent/fluentd/blob/master/CHANGELOG.md#release-v1131---20210625).
