# Fluentd Aggregator Changelog

> [!NOTE]
> All notable changes to this project will be documented in this file; the format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

<!--
### Added - For new features.
### Changed - For changes in existing functionality.
### Deprecated - For soon-to-be removed features.
### Removed - For now removed features.
### Fixed - For any bug fixes.
### Security - In case of vulnerabilities.
-->

## [UNRELEASED]

### Changed

- Update [Ruby](https://hub.docker.com/_/ruby) OCI image from `v3.4.4` to [`v3.4.5`](https://github.com/ruby/ruby/releases/tag/v3_4_5). ([#445](https://github.com/stevehipwell/fluentd-aggregator/pull/445)) _@dependabot_

## [v3.1.1] - 2025-07-15

### Changed

- Update [Ruby](https://hub.docker.com/_/ruby) OCI image digest. ([#440](https://github.com/stevehipwell/fluentd-aggregator/pull/440)) _@dependabot_
- Update [async](https://rubygems.org/gems/async) from `2.25.0` to [`2.26.0`](https://github.com/socketry/async/releases/tag/v2.26.0). ([#443](https://github.com/stevehipwell/fluentd-aggregator/pull/443)) _@dependabot_
- Update [fluent-plugin-kafka](https://github.com/fluent/fluent-plugin-kafka) from `0.19.4` to [`0.19.5`](https://github.com/fluent/fluent-plugin-kafka/releases/tag/v0.19.5). ([#443](https://github.com/stevehipwell/fluentd-aggregator/pull/443)) _@dependabot_

## [v3.1.0] - 2025-06-16

### Changed

- Update [Ruby](https://hub.docker.com/_/ruby) OCI image from `v3.4.3` to [`v3.4.4`](https://github.com/ruby/ruby/releases/tag/v3_4_4). ([#432](https://github.com/stevehipwell/fluentd-aggregator/pull/432)) _@dependabot_
- Update [oj](https://rubygems.org/gems/oj) Gem from `3.16.10` to [`3.16.11`](https://github.com/ohler55/oj/releases/tag/v3.16.11). ([#434](https://github.com/stevehipwell/fluentd-aggregator/pull/434)) _@dependabot_
- Update [fluent-plugin-cloudwatch-logs](https://rubygems.org/gems/fluent-plugin-cloudwatch-logs) from `v0.14.3` to [`v0.15.0`](https://github.com/fluent-plugins-nursery/fluent-plugin-cloudwatch-logs/releases/tag/v0.15.0). ([#434](https://github.com/stevehipwell/fluentd-aggregator/pull/434)) _@dependabot_
- Update [Ruby](https://hub.docker.com/_/ruby) OCI image digest. ([#435](https://github.com/stevehipwell/fluentd-aggregator/pull/435)) _@dependabot_
- Update [Ruby](https://hub.docker.com/_/ruby) OCI image digest. ([#438](https://github.com/stevehipwell/fluentd-aggregator/pull/438)) _@dependabot_
- Update [async](https://rubygems.org/gems/async) from `2.24.0` to [`2.25.0`](https://github.com/socketry/async/releases/tag/v2.25.0). ([#437](https://github.com/stevehipwell/fluentd-aggregator/pull/437)) _@dependabot_
- Update [fluent-plugin-concat](https://rubygems.org/gems/fluent-plugin-concat) from `v2.5.0` to [`v2.6.0`](https://github.com/fluent-plugins-nursery/fluent-plugin-concat/releases/tag/v2.6.0). ([#437](https://github.com/stevehipwell/fluentd-aggregator/pull/437)) _@dependabot_

## [v3.0.1] - 2025-05-12

### Changed

- Update [Ruby](https://hub.docker.com/_/ruby) OCI image digest. ([#425](https://github.com/stevehipwell/fluentd-aggregator/pull/425)) _@dependabot_
- Update [async](https://rubygems.org/gems/async) from `2.23.1` to [`2.24.0`](https://github.com/socketry/async/releases/tag/v2.24.0). ([#428](https://github.com/stevehipwell/fluentd-aggregator/pull/428)) _@dependabot_
- Update [async-http](https://rubygems.org/gems/async-http) from `0.88.0` to [`0.89.0`](https://github.com/socketry/async-http/releases/tag/v0.89.0). ([#428](https://github.com/stevehipwell/fluentd-aggregator/pull/429)) _@dependabot_
- Update [fluent-plugin-elasticsearch](https://rubygems.org/gems/fluent-plugin-elasticsearch/) from `5.4.3` to [`6.0.0`](https://github.com/uken/fluent-plugin-elasticsearch/releases/tag/v6.0.0). ([#430](https://github.com/stevehipwell/fluentd-aggregator/pull/430)) _@dependabot_

## [v3.0.0] - 2025-04-17

### Changed

- Update [async](https://rubygems.org/gems/async) from `2.23.0` to [`2.23.1`](https://github.com/socketry/async/releases/tag/v2.23.1). ([#414](https://github.com/stevehipwell/fluentd-aggregator/pull/414)) _@dependabot_
- Update [async-http](https://rubygems.org/gems/async-http) from `0.87.0` to [`0.88.0`](https://github.com/socketry/async-http/releases/tag/v0.88.0). ([#414](https://github.com/stevehipwell/fluentd-aggregator/pull/414)) _@dependabot_
- Update [fluent-plugin-kafka](https://github.com/fluent/fluent-plugin-kafka) from `0.19.3` to [`0.19.4`](https://github.com/fluent/fluent-plugin-kafka/releases/tag/v0.19.4). ([#419](https://github.com/stevehipwell/fluentd-aggregator/pull/419)) _@dependabot_
- Update [Ruby](https://hub.docker.com/_/ruby) OCI image from `v3.4.2` to [`v3.4.3`](https://github.com/ruby/ruby/releases/tag/v3_4_3). ([#421](https://github.com/stevehipwell/fluentd-aggregator/pull/421)) _@dependabot_

### Removed

- Removed _Alpine (musl)_ version. ([#408](https://github.com/stevehipwell/fluentd-aggregator/pull/408)) _@stevehipwell_
- Removed Docker Hub image source. ([#408](https://github.com/stevehipwell/fluentd-aggregator/pull/408)) _@stevehipwell_

## [v2.20.0] - 2025-03-12

### Changed

- Updated [Ruby](https://hub.docker.com/_/ruby) OCI image digest. ([#405](https://github.com/stevehipwell/fluentd-aggregator/pull/405)) _@dependabot_
- Updated [ur](https://rubygems.org/gems/uri) Gem from `1.0.2` to [`1.0.3`](https://github.com/ruby/uri/releases/tag/v1.0.3). ([#408](https://github.com/stevehipwell/fluentd-aggregator/pull/408)) _@dependabot_
- Updated [json](https://rubygems.org/gems/json) Gem from `2.10.1` to [`2.10.2`](https://github.com/flori/json/releases/tag/v2.9.1). ([#411](https://github.com/stevehipwell/fluentd-aggregator/pull/411)) _@dependabot_

## [v2.19.0] - 2025-02-26

### Changed

- Updated [async](https://rubygems.org/gems/async) from `2.21.1` to [`2.23.0`](https://github.com/socketry/async/releases/tag/v2.23.0). ([#390](https://github.com/stevehipwell/fluentd-aggregator/pull/374) & [#401](https://github.com/stevehipwell/fluentd-aggregator/pull/401)) _@dependabot_
- Updated [async-http](https://rubygems.org/gems/async-http) from `0.86.2` to [`0.87.0`](https://github.com/socketry/async-http/releases/tag/v0.87.0). ([#390](https://github.com/stevehipwell/fluentd-aggregator/pull/374)) _@dependabot_
- Updated [Ruby](https://hub.docker.com/_/ruby) OCI image from `v3.3.6` to [`v3.4.2`](https://github.com/ruby/ruby/releases/tag/v3_4_2). ([#399](https://github.com/stevehipwell/fluentd-aggregator/pull/399)) _@dependabot_
- Updated [oj](https://rubygems.org/gems/oj) Gem from `3.16.9` to [`3.16.10`](https://github.com/ohler55/oj/releases/tag/v3.16.10). ([#404](https://github.com/stevehipwell/fluentd-aggregator/pull/404)) _@dependabot_
- Updated [fluent-plugin-s3](https://rubygems.org/gems/fluent-plugin-s3) from `v1.8.2` to [`v1.8.3`](https://github.com/fluent/fluent-plugin-s3/releases/tag/v1.8.3). ([#404](https://github.com/stevehipwell/fluentd-aggregator/pull/404)) _@dependabot_

### Deprecated

- Deprecated _Alpine (musl)_ version. ([#390](https://github.com/stevehipwell/fluentd-aggregator/pull/374)) _@dependabot_

### Removed

- Removed direct dependency on [json](https://rubygems.org/gems/json) Gem. ([#396](https://github.com/stevehipwell/fluentd-aggregator/pull/396)) _@stevehipwell_
- Removed dependency on [libxml-ruby](https://github.com/xml4r/libxml-ruby) Gem. ([#396](https://github.com/stevehipwell/fluentd-aggregator/pull/396)) _@stevehipwell_

## [v2.18.0] - 2025-01-02

### Changed

- Updated [Ruby](https://hub.docker.com/_/ruby) OCI image from `v3.3.5` to [`v3.3.6`](https://github.com/ruby/ruby/releases/tag/v3_3_6). ([#366](https://github.com/stevehipwell/fluentd-aggregator/pull/366) & [#377](https://github.com/stevehipwell/fluentd-aggregator/pull/377)) _@dependabot_
- Updated [Fluentd](https://rubygems.org/gems/fluentd) from `v1.18.0` to [`v1.18.0`](https://github.com/fluent/fluentd/releases/tag/v1.18.0). ([#372](https://github.com/stevehipwell/fluentd-aggregator/pull/372)) _@dependabot_
- Updated [json](https://rubygems.org/gems/json) Gem from `2.7.5` to [`2.9.1`](https://github.com/flori/json/releases/tag/v2.9.1). ([#369](https://github.com/stevehipwell/fluentd-aggregator/pull/369), [#378](https://github.com/stevehipwell/fluentd-aggregator/pull/378) & [#384](https://github.com/stevehipwell/fluentd-aggregator/pull/384)) _@dependabot_
- Updated [fluent-plugin-s3](https://rubygems.org/gems/fluent-plugin-s3) from `v1.7.2` to [`v1.8.2`](https://github.com/fluent/fluent-plugin-s3/releases/tag/v1.8.2). ([#369](https://github.com/stevehipwell/fluentd-aggregator/pull/369) & [#384](https://github.com/stevehipwell/fluentd-aggregator/pull/384)) _@dependabot_
- Updated [async](https://rubygems.org/gems/async) from `1.32.1` to [`2.21.1`](https://github.com/socketry/async/releases/tag/v2.21.1). ([#374](https://github.com/stevehipwell/fluentd-aggregator/pull/374)) _@dependabot_
- Updated [async-http](https://rubygems.org/gems/async-http) from `0.64.2` to [`0.86.0`](https://github.com/socketry/async-http/releases/tag/v0.86.0). ([#374](https://github.com/stevehipwell/fluentd-aggregator/pull/374)) _@dependabot_
- Updated [oj](https://rubygems.org/gems/oj) Gem from `3.16.7` to [`3.16.9`](https://github.com/ohler55/oj/releases/tag/v3.16.9). ([#384](https://github.com/stevehipwell/fluentd-aggregator/pull/384)) _@dependabot_

## [v2.17.4] - 2024-11-04

### Changed

- Updated [Ruby](https://hub.docker.com/_/ruby) OCI image digests to latest. ([#354](https://github.com/stevehipwell/fluentd-aggregator/pull/354), [#360](https://github.com/stevehipwell/fluentd-aggregator/pull/360) & [#364](https://github.com/stevehipwell/fluentd-aggregator/pull/364)) _@dependabot_
- Updated [WEBrick](https://rubygems.org/gems/webrick/) Gem from `1.8.1` to [`1.8.2`](https://github.com/ruby/webrick/releases/tag/v1.8.2). ([#353](https://github.com/stevehipwell/fluentd-aggregator/pull/353)) _@dependabot_
- Updated [fluent-plugin-opensearch](https://rubygems.org/gems/fluent-plugin-opensearch) from `v1.1.4` to [`v1.1.5`](https://github.com/fluent/fluent-plugin-opensearch/releases/tag/v1.1.5). ([#356](https://github.com/stevehipwell/fluentd-aggregator/pull/356)) _@dependabot_
- Updated [json](https://rubygems.org/gems/json) Gem from `2.7.2` to [`2.7.5`](https://github.com/flori/json/releases/tag/v2.7.5). ([#363](https://github.com/stevehipwell/fluentd-aggregator/pull/363) & [#365](https://github.com/stevehipwell/fluentd-aggregator/pull/365)) _@dependabot_
- Updated [oj](https://rubygems.org/gems/oj) Gem from `3.16.6` to [`3.16.7`](https://github.com/ohler55/oj/releases/tag/v3.16.7). ([#365](https://github.com/stevehipwell/fluentd-aggregator/pull/365)) _@dependabot_

## [v2.17.3] - 2024-09-10

### Changed

- Updated [Ruby](https://hub.docker.com/_/ruby) OCI image from `v3.3.4` to [`v3.3.5`](https://github.com/ruby/ruby/releases/tag/v3_3_5). ([#348](https://github.com/stevehipwell/fluentd-aggregator/pull/348)) _@dependabot_
- Updated [fluent-plugin-azurestorage-gen2](https://rubygems.org/gems/fluent-plugin-azurestorage-gen2) from `v0.3.7` to [`v0.3.8`](https://github.com/oleewere/fluent-plugin-azurestorage-gen2/releases/tag/v0.3.8). ([#346](https://github.com/stevehipwell/fluentd-aggregator/pull/346) & [#349](https://github.com/stevehipwell/fluentd-aggregator/pull/349)) _@dependabot_
- Updated [oj](https://rubygems.org/gems/oj) Gem from `3.16.5` to [`3.16.6`](https://github.com/ohler55/oj/releases/tag/v3.16.6). ([#349](https://github.com/stevehipwell/fluentd-aggregator/pull/349)) _@dependabot_

## [v2.17.2] - 2024-08-29

### Changed

- Updated [fluent-plugin-azurestorage-gen2](https://rubygems.org/gems/fluent-plugin-azurestorage-gen2) from `v0.3.5` to [`v0.3.7`](https://github.com/oleewere/fluent-plugin-azurestorage-gen2/releases/tag/v0.3.6). ([#345](https://github.com/stevehipwell/fluentd-aggregator/pull/345)) _@dependabot_

## [v2.17.1] - 2024-08-20

### Changed

- Updated [Ruby](https://hub.docker.com/_/ruby) OCI image from `v3.3.3` to [`v3.3.4`](https://github.com/ruby/ruby/releases/tag/v3_3_4). ([#324](https://github.com/stevehipwell/fluentd-aggregator/pull/324), [#333](https://github.com/stevehipwell/fluentd-aggregator/pull/333) & [#340](https://github.com/stevehipwell/fluentd-aggregator/pull/340)) _@dependabot_
- Updated [Fluentd](https://rubygems.org/gems/fluentd) from `v1.17.0` to [`v1.17.1`](https://github.com/fluent/fluentd/releases/tag/v1.17.1). ([#341](https://github.com/stevehipwell/fluentd-aggregator/pull/341)) _@dependabot_
- Updated [fluent-plugin-datadog](https://rubygems.org/gems/fluent-plugin-datadog/) from `v0.14.3` to [`v0.14.4`](https://github.com/DataDog/fluent-plugin-datadog/releases/tag/v0.14.4). ([#327](https://github.com/stevehipwell/fluentd-aggregator/pull/327)) _@dependabot_
- Updated [oj](https://rubygems.org/gems/oj) Gem from `3.16.4` to [`3.16.5`](https://github.com/ohler55/oj/releases/tag/v3.16.5). ([#338](https://github.com/stevehipwell/fluentd-aggregator/pull/338)) _@dependabot_
- Updated [fluent-plugin-kafka](https://github.com/fluent/fluent-plugin-kafka) from `0.19.2` to [`0.19.3`](https://github.com/fluent/fluent-plugin-kafka/releases/tag/v0.19.3). ([#338](https://github.com/stevehipwell/fluentd-aggregator/pull/338)) _@dependabot_
- Updated [fluent-plugin-prometheus](https://rubygems.org/gems/fluent-plugin-prometheus/) from `v2.1.0` to [`v2.2.0`](https://github.com/fluent/fluent-plugin-prometheus/releases/tag/v2.2.0). ([#338](https://github.com/stevehipwell/fluentd-aggregator/pull/338)) _@dependabot_

## [v2.17.0] - 2024-06-14

### Changed

- Updated [Ruby](https://hub.docker.com/_/ruby) OCI image from `v3.3.2` to [`v3.3.3`](https://github.com/ruby/ruby/releases/tag/v3_3_3). ([#312](https://github.com/stevehipwell/fluentd-aggregator/pull/312)) _@dependabot_

## [v2.16.0] - 2024-06-10

### Changed

- Updated [Ruby](https://hub.docker.com/_/ruby) OCI image from `v3.3.1` to [`v3.3.2`](https://github.com/ruby/ruby/releases/tag/v3_3_2). ([#306](https://github.com/stevehipwell/fluentd-aggregator/pull/306)) _@dependabot_
- Updated [oj](https://rubygems.org/gems/oj) Gem from `3.16.3` to [`3.16.4`](https://github.com/ohler55/oj/releases/tag/v3.16.4). ([#308](https://github.com/stevehipwell/fluentd-aggregator/pull/308)) _@dependabot_

## [v2.15.0] - 2024-04-30

### Changed

- Updated [Fluentd](https://rubygems.org/gems/fluentd) from `v1.16.5` to [`v1.17.0`](https://github.com/fluent/fluentd/releases/tag/v1.17.0). ([#301](https://github.com/stevehipwell/fluentd-aggregator/pull/301)) _@dependabot_
- Updated [fluent-plugin-datadog](https://rubygems.org/gems/fluent-plugin-datadog/) from `v0.14.2` to [`v0.14.3`](https://github.com/DataDog/fluent-plugin-datadog/releases/tag/v0.14.3). ([#301](https://github.com/stevehipwell/fluentd-aggregator/pull/301)) _@dependabot_

## [v2.14.0] - 2024-04-29

### Changed

- Updated [Ruby](https://hub.docker.com/_/ruby) OCI images from `v3.3.0` to [`v3.3.1`](https://github.com/ruby/ruby/releases/tag/v3_3_1). ([#298](https://github.com/stevehipwell/fluentd-aggregator/pull/298)) _@dependabot_
- Updated [json](https://rubygems.org/gems/json) Gem from `2.7.1` to [`2.7.2`](https://github.com/flori/json/releases/tag/v2.7.2). ([#292](https://github.com/stevehipwell/fluentd-aggregator/pull/292)) _@dependabot_
- Updated [async-http](https://rubygems.org/gems/async-http) from `0.64.0` to [`0.64.2`](https://github.com/socketry/async-http/releases/tag/v0.64.2). ([#292](https://github.com/stevehipwell/fluentd-aggregator/pull/292) & [#295](https://github.com/stevehipwell/fluentd-aggregator/pull/295)) _@dependabot_

## [v2.13.0] - 2024-04-02

### Changed

- Updated [Fluentd](https://rubygems.org/gems/fluentd) from `1.16.4` to [1.16.5](https://github.com/fluent/fluentd/releases/tag/v1.16.5). ([#289](https://github.com/stevehipwell/fluentd-aggregator/pull/289)) _@dependabot_
- Updated [async](https://rubygems.org/gems/async) from `1.31.0` to [1.32.1](https://github.com/socketry/async/releases/tag/v1.32.1). ([#289](https://github.com/stevehipwell/fluentd-aggregator/pull/289)) _@dependabot_
- Updated [async-http](https://rubygems.org/gems/async-http) from `0.63.0` to `0.64.0`. ([#289](https://github.com/stevehipwell/fluentd-aggregator/pull/289)) _@dependabot_
- Updated [Ruby](https://hub.docker.com/_/ruby) _glibc_ OCI image to stable (_Bookworm_). ([#291](https://github.com/stevehipwell/fluentd-aggregator/pull/291)) _@stevehipwell_

## [v2.12.0] - 2024-03-14

### Changed

- Updated [Fluentd](https://rubygems.org/gems/fluentd) from `1.16.3` to [1.16.4](https://github.com/fluent/fluentd/releases/tag/v1.16.4). ([#286](https://github.com/stevehipwell/fluentd-aggregator/pull/286)) _@dependabot_
- Updated [libxml-ruby](https://github.com/xml4r/libxml-ruby) Gem from `v5.0.2` to `v5.0.3`. ([#286](https://github.com/stevehipwell/fluentd-aggregator/pull/286)) _@dependabot_
- Updated [Ruby](https://hub.docker.com/_/ruby) OCI image digests for `v3.3.0` to latest. ([#280](https://github.com/stevehipwell/fluentd-aggregator/pull/280), [#281](https://github.com/stevehipwell/fluentd-aggregator/pull/281), [#283](https://github.com/stevehipwell/fluentd-aggregator/pull/283), [#285](https://github.com/stevehipwell/fluentd-aggregator/pull/285)) _@dependabot_

## [v2.11.1] - 2024-02-13

### Changed

- Updated [Ruby](https://hub.docker.com/_/ruby) OCI image digests for `v3.3.0` to latest.
- Updated [async-http](https://rubygems.org/gems/async-http) from `v0.61.0` to `v0.63.0`.

## [v2.11.0] - 2024-01-19

### Changed

- Updated [Ruby](https://hub.docker.com/_/ruby) OCI images to `v3.3.0`.
- Updated [libxml-ruby](https://github.com/xml4r/libxml-ruby) Gem from `v4.1.2` to `v5.0.2`.
- Updated [fluent-plugin-elasticsearch](https://rubygems.org/gems/fluent-plugin-elasticsearch) Gem from `5.4.2` to `5.4.3`.

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

### Changed

- Updated _Fluentd_ to [v1.16.0](https://github.com/fluent/fluentd/releases/tag/v1.16.0).
- Updated OCI base image digests to latest.
- Updated [fluent-plugin-elasticsearch](https://rubygems.org/gems/fluent-plugin-elasticsearch) Gem from `5.2.4` to `5.2.5`.

## [v2.7.0] - 2023-03-16

### Added

- Added additional `glibc` variant and refer to current Alpine version as `musl` variant.

### Changed

- Changed Alpine base image to official Ruby image.
- Changed Dockerfile pattern.
- Updated [async](https://rubygems.org/gems/async) Gem from `v1.30.3` to `v1.31.0`.

## [v2.6.2] - 2023-02-15

### Changed

- Updated [Alpine](https://www.alpinelinux.org/) base image from `v3.17.1` to `v3.17.2`.
- Updated [fluent-plugin-opensearch](https://rubygems.org/gems/fluent-plugin-opensearch) from `v1.0.9` to `v1.0.10`.
- Updated [fluent-plugin-grafana-loki](https://rubygems.org/gems/fluent-plugin-grafana-loki) from `v1.2.18` to `v1.2.20`.
- Updated [oj](https://rubygems.org/gems/oj) from `v3.14.1` to `v3.14.2`.

## [v2.6.1] - 2013-02-06

### Changed

- Updated [async-http](https://github.com/socketry/async-http) Gem from `v0.59.4` to `v0.60.1`.
- Updated [oj](https://github.com/ohler55/oj) from `v3.13.23` to `v3.14.1`.

## [v2.6.0] - 2023-01-10

### Changed

- Updated [Alpine](https://www.alpinelinux.org/) base image from `v3.17.0` to `v3.17.1`.
- Updated [async-http](https://github.com/socketry/async-http) Gem from `v0.59.3` to `v0.59.4`.
- Updated [libxml-ruby](https://github.com/xml4r/libxml-ruby) Gem from `v3.2.4` to `v4.0.0`.

## [v2.5.0] - 2022-12-06

### Added

- Added `libxml-ruby` to support AWS gems.

### Changed

- Updated `json` from `v2.6.2` to `v2.6.3`.

## [v2.4.0] - 2022-11-28

### Changed

- Updated _Alpine_ to `v3.17.0`.
- Updated `fluent-plugin-opensearch` to `v1.0.9`.

## [v2.3.0] - 2022-11-14

### Changed

- Updated _Alpine_ to `v3.16.3`.
- Updated `async-http` to `v0.59.3`.
- Updated `oj` to `v3.13.23`.

## [v2.2.0] - 2022-11-02

### Changed

- Updated _Fluentd_ to [v1.15.3](https://github.com/fluent/fluentd/releases/tag/v1.15.3).
- Updated `fluent-plugin-elasticsearch` to `v5.2.4`.
- Updated `fluent-plugin-s3` to `v1.7.2`.
- Updated `async-http` to `v0.59.2`.
- Updated `oj` to `v3.13.22`.

## [v2.1.0] - 2022-10-25

### Changed

- Changed to use explicit base image version and Dependabot to manage the updates.
- Changed to use Bundler to install the Gems and Dependabot to manage the updates.
- Changed default label in configuration to `@DEFAULT` as idiomatically it should be uppercase.

## [v2.0.0] - 2022-09-15

> [!WARNING]
> The _ElasticSearch_ plugin and libraries have been updated to the latest version so AWS users will need to be using _OpenSearch_.

### Highlights

- The _Fluentd_ version has been updated from `v1.14` to `v1.15` (releases [v1.15.0](https://www.fluentd.org/blog/fluentd-v1.15.0-has-been-released), [v1.15.1](https://www.fluentd.org/blog/fluentd-v1.15.1-has-been-released) & [v1.15.2](https://www.fluentd.org/blog/fluentd-v1.15.2-has-been-released)).
- This image now follows semantic versioning and is decoupled from the _Fluentd_ release cycle and versioning constraints.
- Plugin versions will now be strictly versioned.

### Added

- Added explicit UID & GID to `fluent` user of `2000`.
- Added `/fluentd/state` directory.

### Changed

- Updated _Fluentd_ to [v1.15.2](https://github.com/fluent/fluentd/releases/tag/v1.15.2).
- Changed versioning strategy to decouple from _Fluentd_ releases.
- Changed plugin installation to explicitly set the version.
- Changed default configuration to make it simpler.

### Removed

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

<!--
RELEASE LINKS
-->
[UNRELEASED]: https://github.com/stevehipwell/fluentd-aggregator/compare/v3.1.1...HEAD
[v3.1.1]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v3.1.1
[v3.1.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v3.1.0
[v3.0.1]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v3.0.1
[v3.0.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v3.0.0
[v2.20.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.20.0
[v2.19.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.19.0
[v2.18.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.18.0
[v2.17.4]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.17.4
[v2.17.3]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.17.3
[v2.17.2]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.17.2
[v2.17.1]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.17.1
[v2.17.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.17.0
[v2.16.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.16.0
[v2.15.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.15.0
[v2.14.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.14.0
[v2.13.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.13.0
[v2.12.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.12.0
[v2.11.1]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.11.1
[v2.11.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.11.0
[v2.10.2]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.10.2
[v2.10.1]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.10.1
[v2.10.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.10.0
[v2.9.3]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.9.3
[v2.9.2]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.9.2
[v2.9.1]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.9.1
[v2.9.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.9.0
[v2.8.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.8.0
[v2.7.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.7.0
[v2.6.2]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.6.2
[v2.6.1]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.6.1
[v2.6.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.6.0
[v2.5.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.5.0
[v2.4.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.4.0
[v2.3.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.3.0
[v2.2.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.2.0
[v2.1.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.1.0
[v2.0.0]: https://github.com/stevehipwell/fluentd-aggregator/releases/tag/v2.0.0
