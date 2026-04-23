FROM alpine:latest

# Setup a non-root user
RUN useradd -m -U -s /bin/ash boss
USER boss

# Install required packages
# RUN apk add --no-cache

WORKDIR /home/boss

CMD ["/bin/ash"]
