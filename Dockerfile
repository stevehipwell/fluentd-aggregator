FROM fluent/fluentd:v1.12.3-1.0

# Use root account to use apk
USER root

# Add system dependencies
RUN set -eu; \
  apk add --no-cache \
  libcurl;

# Add custom plugins
RUN set -eu; \
  apk add --no-cache --virtual .build-deps sudo build-base ruby-dev; \
  sudo gem install \
  fluent-plugin-aws-elasticsearch-service \
  fluent-plugin-azure-loganalytics \
  fluent-plugin-azurestorage-gen2 \
  fluent-plugin-concat \
  fluent-plugin-datadog \
  fluent-plugin-elasticsearch \
  fluent-plugin-grafana-loki \
  fluent-plugin-prometheus \
  fluent-plugin-record-modifier \
  fluent-plugin-rewrite-tag-filter \
  fluent-plugin-route \
  fluent-plugin-s3 \
  fluent-plugin-sqs; \
  sudo gem sources --clear-all; \
  apk del .build-deps; \
  rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem;

# Overwrite conf
COPY fluent.conf /fluentd/etc/

# Set back to non-root user
USER fluent
