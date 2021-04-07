ARG alpine_tag=3.13.4
FROM alpine:${alpine_tag}

ARG pkg_version=2.2.1

RUN \
  apk upgrade --no-cache && \
  apk add --no-cache npm && \
  npm install -g prettier@${pkg_version} && \
  npm cache clean --force
ENTRYPOINT ["prettier"]
