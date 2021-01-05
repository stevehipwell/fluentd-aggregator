FROM fluent/fluentd:v1.11

# Use root account to use apk
USER root

# below RUN includes plugin as examples elasticsearch is not required
# you may customize including plugins as you wish
RUN set -eu; \
  apk add --no-cache --update --virtual .build-deps sudo build-base ruby-dev; \
  sudo gem install fluent-plugin-s3 fluent-plugin-elasticsearch fluent-plugin-sqs; \
  sudo gem sources --clear-all; \
  apk del .build-deps; \
  rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem;

# Set back to non-root user
USER fluent
