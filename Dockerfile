FROM ruby:3.4.5-slim@sha256:1508702027460658032ab7cbbe12267917daa3ed44f3fc3fce273074c53a67a7

RUN <<EOF
set -eux
apt-get update
apt-get install -y --no-install-recommends \
  ca-certificates \
  tini \
  libjemalloc2 \
  libxml2 \
  libxslt1.1 \
  libcurl4
ln -s "/usr/lib/$(uname -m)-linux-gnu" /usr/lib/linux-gnu
EOF

COPY Gemfile Gemfile.lock /fluentd/

RUN <<EOF
set -eux
buildDeps=" \
  make \
  gcc \
  g++ \
  libc-dev \
  wget \
  bzip2 \
  gnupg \
  dirmngr \
  libxml2-dev \
  libxslt1-dev \
  "
apt-get install -y --no-install-recommends ${buildDeps}
bundle config set frozen true
bundle install --no-cache --gemfile=/fluentd/Gemfile
gem sources --clear-all
apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false ${buildDeps}
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/3.*/gems/fluentd-*/test
EOF

RUN <<EOF
set -eux
groupadd --system --gid 2000 fluent
useradd --system --gid fluent --uid 2000 fluent
# For log storage (maybe shared with host).
mkdir -p /fluentd/log /fluentd/state
# Configuration/plugins path (default: copied from .)
mkdir -p /fluentd/etc /fluentd/plugins
chown -R fluent:fluent /fluentd
EOF

COPY fluent.yaml /fluentd/etc/
COPY --chmod=755 entrypoint.sh /bin/

ENV FLUENTD_DISABLE_BUNDLER_INJECTION="1" FLUENTD_CONF="fluent.yaml"

ENV LD_PRELOAD="/usr/lib/linux-gnu/libjemalloc.so.2"
EXPOSE 24224

USER fluent
ENTRYPOINT ["tini", "--", "/bin/entrypoint.sh"]
CMD ["fluentd"]
