FROM ruby:3.2.1-slim-bullseye@sha256:e0be7ab1fa6b43159fff18191e365061b2dd180c81db2a4b080527e43d6e2528

RUN set -eux; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
  ca-certificates \
  tini \
  libjemalloc2 \
  libxml2 \
  libxslt1.1; \
  ln -s "/usr/lib/$(uname -m)-linux-gnu" /usr/lib/linux-gnu;

COPY Gemfile Gemfile.lock /fluentd/

RUN set -eux; \
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
  "; \
  apt-get install -y --no-install-recommends ${buildDeps}; \
  bundle install --frozen --no-cache --gemfile=/fluentd/Gemfile; \
  gem sources --clear-all; \
  apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false ${buildDeps}; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/3.*/gems/fluentd-*/test;

RUN set -eux; \
  groupadd --system --gid 2000 fluent; \
  useradd --system --gid fluent --uid 2000 fluent; \
  # For log storage (maybe shared with host)
  mkdir -p /fluentd/log /fluentd/state; \
  # Configuration/plugins path (default: copied from .)
  mkdir -p /fluentd/etc /fluentd/plugins; \
  chown -R fluent:fluent /fluentd;

COPY fluent.yaml /fluentd/etc/
COPY --chmod=755 entrypoint.sh /bin/

ENV FLUENTD_DISABLE_BUNDLER_INJECTION="1" FLUENTD_CONF="fluent.yaml"

ENV LD_PRELOAD="/usr/lib/linux-gnu/libjemalloc.so.2"
EXPOSE 24224

USER fluent
ENTRYPOINT ["tini",  "--", "/bin/entrypoint.sh"]
CMD ["fluentd"]
