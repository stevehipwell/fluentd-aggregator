FROM alpine:3.13

RUN apk update \
  && apk add --no-cache \
  ca-certificates \
  ruby ruby-irb ruby-etc ruby-webrick \
  tini \
  && apk add --no-cache --virtual .build-deps \
  build-base linux-headers \
  ruby-dev gnupg \
  && echo 'gem: --no-document' >> /etc/gemrc \
  && gem install oj -v 3.10.18 \
  && gem install json -v 2.4.1 \
  && gem install async-http -v 0.54.0 \
  && gem install ext_monitor -v 0.1.2 \
  && gem install fluentd -v 1.14.6 \
  && gem install bigdecimal -v 1.4.4 \
  && apk del .build-deps \
  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test

RUN addgroup -S fluent && adduser -S -G fluent fluent \
  # for log storage (maybe shared with host)
  && mkdir -p /fluentd/log \
  # configuration/plugins path (default: copied from .)
  && mkdir -p /fluentd/etc /fluentd/plugins \
  && chown -R fluent /fluentd && chgrp -R fluent /fluentd

RUN set -eu; \
  apk add --no-cache \
  libcurl; \
  apk add --no-cache --virtual .build-deps build-base ruby-dev; \
  gem install \
  elasticsearch-api:7.13.3 \
  elasticsearch-transport:7.13.3 \
  elasticsearch:7.13.3 \
  fluent-plugin-aws-elasticsearch-service \
  fluent-plugin-azure-loganalytics \
  fluent-plugin-azurestorage-gen2 \
  fluent-plugin-cloudwatch-logs \
  fluent-plugin-concat \
  fluent-plugin-datadog \
  fluent-plugin-elasticsearch \
  fluent-plugin-grafana-loki \
  fluent-plugin-kafka \
  fluent-plugin-opensearch \
  fluent-plugin-prometheus \
  fluent-plugin-record-modifier \
  fluent-plugin-rewrite-tag-filter \
  fluent-plugin-route \
  fluent-plugin-s3 \
  fluent-plugin-sqs \
  fluent-plugin-azureeventhubs; \
  gem sources --clear-all; \
  apk del .build-deps; \
  rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem;

COPY fluent.conf /fluentd/etc/
COPY entrypoint.sh /bin/

RUN chmod +x /bin/entrypoint.sh

ENV FLUENTD_CONF="fluent.conf"
ENV RUBY_GC_HEAP_OLDOBJECT_LIMIT_FACTOR="0.9"

ENV LD_PRELOAD=""
EXPOSE 24224 5140

USER fluent
ENTRYPOINT ["tini",  "--", "/bin/entrypoint.sh"]
CMD ["fluentd"]

# FROM fluent/fluentd:v1.14.6-1.0

# # Default env
# ENV RUBY_GC_HEAP_OLDOBJECT_LIMIT_FACTOR="0.9"

# # Use root account to use apk
# USER root

# # Install
# RUN set -eu; \
#   apk add --no-cache \
#   libcurl;
#   apk add --no-cache --virtual .build-deps build-base ruby-dev; \
#   gem install \
#   elasticsearch-api:7.13.3 \
#   elasticsearch-transport:7.13.3 \
#   elasticsearch:7.13.3 \
#   fluent-plugin-aws-elasticsearch-service \
#   fluent-plugin-azure-loganalytics \
#   fluent-plugin-azurestorage-gen2 \
#   fluent-plugin-cloudwatch-logs \
#   fluent-plugin-concat \
#   fluent-plugin-datadog \
#   fluent-plugin-elasticsearch \
#   fluent-plugin-grafana-loki \
#   fluent-plugin-kafka \
#   fluent-plugin-opensearch \
#   fluent-plugin-prometheus \
#   fluent-plugin-record-modifier \
#   fluent-plugin-rewrite-tag-filter \
#   fluent-plugin-route \
#   fluent-plugin-s3 \
#   fluent-plugin-sqs; \
#   gem sources --clear-all; \
#   apk del .build-deps; \
#   rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem;

# # Overwrite conf
# COPY fluent.conf /fluentd/etc/

# # Set back to non-root user
# USER fluent
