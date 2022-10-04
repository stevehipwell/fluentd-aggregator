FROM alpine:3.16

# Do not split this into multiple RUN!
# Docker creates a layer for every RUN-Statement
# therefore an 'apk delete' has no effect
RUN apk update \
  && apk add --no-cache \
  ca-certificates \
  ruby ruby-irb ruby-etc ruby-webrick \
  tini \
  libcurl \
  && apk add --no-cache --virtual .build-deps \
  build-base linux-headers \
  ruby-dev gnupg \
  && echo 'gem: --no-document' >> /etc/gemrc \
  && gem install oj -v 3.13.19 \
  && gem install json -v 2.6.2 \
  && gem install async -v 1.30.3 \
  && gem install async-http -v 0.56.6 \
  && gem install fluentd -v 1.15.2 \
  && gem install bigdecimal -v 1.4.4 \
  && gem install fluent-plugin-azure-loganalytics -v 0.7.0 \
  && gem install fluent-plugin-azurestorage-gen2 -v 0.3.3 \
  && gem install fluent-plugin-cloudwatch-logs -v 0.14.3 \
  && gem install fluent-plugin-concat -v 2.5.0 \
  && gem install fluent-plugin-datadog -v 0.14.2 \
  && gem install fluent-plugin-elasticsearch -v 5.2.3 \
  && gem install fluent-plugin-grafana-loki -v 1.2.18 \
  && gem install fluent-plugin-kafka -v 0.18.1 \
  && gem install fluent-plugin-opensearch -v 1.0.8 \
  && gem install fluent-plugin-prometheus -v 2.0.3 \
  && gem install fluent-plugin-record-modifier -v 2.1.1 \
  && gem install fluent-plugin-rewrite-tag-filter -v 2.4.0 \
  && gem install fluent-plugin-route -v 1.0.0 \
  && gem install fluent-plugin-s3 -v 1.7.1 \
  && gem install fluent-plugin-sqs -v 3.0.0 \
  && apk del .build-deps \
  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/3.*/gems/fluentd-*/test

RUN addgroup --system --gid 2000 fluent && adduser --system --ingroup fluent --uid 2000 fluent \
  # for log storage (maybe shared with host)
  && mkdir -p /fluentd/log \
  && mkdir -p /fluentd/state \
  # configuration/plugins path (default: copied from .)
  && mkdir -p /fluentd/etc /fluentd/plugins \
  && chown -R fluent /fluentd && chgrp -R fluent /fluentd

COPY fluent.yaml /fluentd/etc/
COPY --chmod=755 entrypoint.sh /bin/

ENV FLUENTD_CONF="fluent.yaml"

ENV LD_PRELOAD=""
EXPOSE 24224

USER fluent
ENTRYPOINT ["tini",  "--", "/bin/entrypoint.sh"]
CMD ["fluentd"]
