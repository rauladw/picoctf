FROM alpine:latest

# Install required packages
RUN apk add --no-cache git git-doc man

# Setup a non-root user
RUN adduser -h /home/boss -s /bin/ash -D boss

USER boss
WORKDIR /home/boss

# Keep the container running
ENTRYPOINT ["/bin/ash", "-i"]
