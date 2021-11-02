FROM ubuntu:latest

# Installing packages
# hadolint ignore=DL3018
RUN apk update && \
    apk add --no-cache pdftk && \
    rm -rf /var/cache/apk/

# https://docs.github.com/en/actions/creating-actions/dockerfile-support-for-github-actions#entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]