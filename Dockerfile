ARG FLUENTD_VERSION="v1.12"
FROM fluent/fluentd:${FLUENTD_VERSION}

# Use root account to use apk
USER root

# Add custom plugins
RUN set -eu; \
  apk add --no-cache --update --virtual .build-deps sudo build-base ruby-dev; \
  sudo gem install \
  fluent-plugin-concat \
  fluent-plugin-record-modifier \
  fluent-plugin-elasticsearch \
  fluent-plugin-grafana-loki \
  fluent-plugin-prometheus \
  fluent-plugin-s3 \
  fluent-plugin-sqs \
  fluent-plugin-aws-elasticsearch-service \
  fluent-plugin-datadog; \
  sudo gem sources --clear-all; \
  apk del .build-deps; \
  rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem;

# Overwrite conf
COPY fluent.conf /fluentd/etc/

# Set back to non-root user
USER fluent
