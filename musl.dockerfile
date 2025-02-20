FROM ruby:3.4.2-alpine@sha256:cb6a5cb7303314946b75fa64c96d8116f838b8495ffa161610bd6aaaf9a70121

RUN <<EOF
set -eux
apk update
apk add --no-cache \
  ca-certificates \
  tini \
  libcurl \
  libxml2 \
  libxslt
EOF

COPY Gemfile Gemfile.lock /fluentd/

RUN <<EOF
set -eux
apk add --no-cache --virtual .build-deps \
  build-base \
  linux-headers \
  ruby-dev \
  gnupg \
  libxml2-dev \
  libxslt-dev
bundle config set frozen true
bundle install --no-cache --gemfile=/fluentd/Gemfile
gem sources --clear-all
apk del .build-deps
rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/3.*/gems/fluentd-*/test
EOF

RUN <<EOF
set -eux
addgroup --system --gid 2000 fluent
adduser --system --ingroup fluent --uid 2000 fluent
# For log storage (maybe shared with host)
mkdir -p /fluentd/log /fluentd/state
# Configuration/plugins path (default: copied from .)
mkdir -p /fluentd/etc /fluentd/plugins
chown -R fluent:fluent /fluentd
EOF

COPY fluent.yaml /fluentd/etc/
COPY --chmod=755 entrypoint.sh /bin/

ENV FLUENTD_DISABLE_BUNDLER_INJECTION="1" FLUENTD_CONF="fluent.yaml"

ENV LD_PRELOAD=""
EXPOSE 24224

USER fluent
ENTRYPOINT ["tini", "--", "/bin/entrypoint.sh"]
CMD ["fluentd"]
