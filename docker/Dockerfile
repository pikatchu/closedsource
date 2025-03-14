FROM alpine:latest

# Install necessary packages
RUN apk add --no-cache gcc emacs-nox libc-dev shadow bash sudo

RUN adduser -D leo && \
    echo "leo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/leo && \
    chmod 0440 /etc/sudoers.d/leo

# Switch to user 'leo' for safety
USER leo

# Set bash prompt to 'leo:path$'
RUN echo 'export PS1="leo:\w$ "' >> /home/leo/.bashrc

# Set working directory to user's home
WORKDIR /home/leo

CMD ["/bin/bash"]
