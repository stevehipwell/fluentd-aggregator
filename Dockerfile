FROM docker.io/library/ruby:3.4.6-slim@sha256:7e98b0446142b30dd4bbf298d13a09735c27abc93d1eece0ca787b19cdac20b2 AS base

WORKDIR /fluentd

RUN <<EOF
set -eux
apt-get update -qq
apt-get install -y --no-install-recommends \
  ca-certificates \
  tini \
  libjemalloc2 \
  libxml2 \
  libxslt1.1 \
  libcurl4
ln -s "/usr/lib/$(uname -m)-linux-gnu/libjemalloc.so.2" /usr/local/lib/libjemalloc.so
rm -rf /var/lib/apt/lists /var/cache/apt/archives
bundle config --global set simulate_version 4
EOF

COPY Gemfile Gemfile.lock ./

ENV BUNDLE_DEPLOYMENT="1" \
  BUNDLE_PATH="/usr/local/bundle" \
  BUNDLE_BIN="/usr/local/bundle/bin" \
  LD_PRELOAD="/usr/local/lib/libjemalloc.so"

FROM base AS build

RUN <<EOF
set -eux
apt-get update -qq
apt-get install -y --no-install-recommends \
  make \
  gcc \
  g++ \
  libc-dev \
  wget \
  bzip2 \
  gnupg \
  dirmngr \
  libxml2-dev \
  libxslt1-dev
rm -rf /var/lib/apt/lists /var/cache/apt/archives
EOF

RUN <<EOF
set -eux
bundle install --no-cache --jobs=4
rm -rf ~/.bundle/ "${BUNDLE_PATH}"/ruby/*/cache "${BUNDLE_PATH}"/ruby/*/bundler/gems/*/.git
EOF

FROM base

RUN <<EOF
set -eux
groupadd --system --gid 2000 fluent
useradd --system --gid fluent --uid 2000 fluent
mkdir -p /fluentd/etc /fluentd/bin /fluentd/data /fluentd/plugins /fluentd/log /fluentd/state
chown -R fluent:fluent /fluentd
EOF

USER fluent:fluent

COPY --chown=fluent:fluent --from=build "${BUNDLE_PATH}" "${BUNDLE_PATH}"
COPY --chown=fluent:fluent fluent.yaml /fluentd/etc/
COPY --chown=fluent:fluent --chmod=755 entrypoint.sh /fluentd/bin/

ENV FLUENTD_DISABLE_BUNDLER_INJECTION="1" \
  FLUENTD_CONF="fluent.yaml"

EXPOSE 24224

ENTRYPOINT ["tini", "--", "/fluentd/bin/entrypoint.sh"]
CMD ["fluentd"]
