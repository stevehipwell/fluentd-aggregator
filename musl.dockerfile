FROM ruby:3.2.1-alpine@sha256:daf7bd93d799642f07ee73fe106098c338f1c15de796a6bcbfd74ef3d73df1a4

RUN set -eux; \
  apk update; \
  apk add --no-cache \
  ca-certificates \
  tini \
  libcurl \
  libxml2 \
  libxslt;

COPY Gemfile Gemfile.lock /fluentd/

RUN set -eux; \
  apk add --no-cache --virtual .build-deps \
  build-base \
  linux-headers \
  ruby-dev \
  gnupg \
  libxml2-dev \
  libxslt-dev; \
  bundle install --frozen --no-cache --gemfile=/fluentd/Gemfile; \
  gem sources --clear-all; \
  apk del .build-deps; \
  rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/3.*/gems/fluentd-*/test;

RUN set -eux; \
  addgroup --system --gid 2000 fluent; \
  adduser --system --ingroup fluent --uid 2000 fluent; \
  # For log storage (maybe shared with host)
  mkdir -p /fluentd/log /fluentd/state; \
  # Configuration/plugins path (default: copied from .)
  mkdir -p /fluentd/etc /fluentd/plugins; \
  chown -R fluent:fluent /fluentd;

COPY fluent.yaml /fluentd/etc/
COPY --chmod=755 entrypoint.sh /bin/

ENV FLUENTD_DISABLE_BUNDLER_INJECTION="1" FLUENTD_CONF="fluent.yaml"

ENV LD_PRELOAD=""
EXPOSE 24224

USER fluent
ENTRYPOINT ["tini",  "--", "/bin/entrypoint.sh"]
CMD ["fluentd"]
