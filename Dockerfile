FROM alpine:3.17.2@sha256:ff6bdca1701f3a8a67e328815ff2346b0e4067d32ec36b7992c1fdc001dc8517

ENV FLUENTD_DISABLE_BUNDLER_INJECTION="1"
COPY Gemfile Gemfile.lock /fluentd/

# Do not split this into multiple RUN!
# Docker creates a layer for every RUN-Statement
# therefore an 'apk delete' has no effect
RUN apk update \
  && apk add --no-cache \
  ca-certificates \
  ruby ruby-irb ruby-etc ruby-webrick \
  tini \
  libcurl \
  libxml2 libxslt \
  && apk add --no-cache --virtual .build-deps \
  build-base linux-headers \
  ruby-dev gnupg \
  libxml2-dev libxslt-dev \
  && echo 'gem: --no-document' >> /etc/gemrc \
  && gem install bundler --version 2.3.7 \
  && bundle config silence_root_warning true \
  && bundle install --frozen --no-cache --gemfile=/fluentd/Gemfile \
  && gem sources --clear-all \
  && apk del .build-deps \
  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/3.*/gems/fluentd-*/test

RUN addgroup --system --gid 2000 fluent && adduser --system --ingroup fluent --uid 2000 fluent \
  # for log storage (maybe shared with host)
  && mkdir -p /fluentd/log \
  && mkdir -p /fluentd/state \
  # configuration/plugins path (default: copied from .)
  && mkdir -p /fluentd/etc /fluentd/plugins \
  && chown -R fluent:fluent /fluentd

COPY fluent.yaml /fluentd/etc/
COPY --chmod=755 entrypoint.sh /bin/

ENV FLUENTD_CONF="fluent.yaml"

ENV LD_PRELOAD=""
EXPOSE 24224

USER fluent
ENTRYPOINT ["tini",  "--", "/bin/entrypoint.sh"]
CMD ["fluentd"]
