FROM alpine:latest

# Install required packages
# RUN apk add --no-cache

# Setup a non-root user
RUN adduser -h /home/boss -s /bin/ash boss

USER boss
WORKDIR /home/boss

CMD ["/bin/ash"]
