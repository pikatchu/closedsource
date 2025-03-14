FROM alpine:latest

# Install necessary packages
RUN apk add --no-cache emacs g++ libc-dev shadow

# Create user 'leo' and set password 'jasmina'
RUN useradd -m -s /bin/sh leo && \
    echo "leo:jasmina" | chpasswd

# Switch to user 'leo' for safety
USER leo

# Set working directory to user's home
WORKDIR /home/leo

CMD ["sh"]
