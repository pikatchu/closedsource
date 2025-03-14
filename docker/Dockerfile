# Use Alpine as the base image
FROM alpine:latest

# Install GCC and Emacs
RUN apk add --no-cache gcc emacs

# Create user 'leo' and set password
RUN useradd -m -s /bin/bash leo && echo "leo:jasmina" | chpasswd

# Add 'leo' to sudoers (optional, if needed)
RUN usermod -aG sudo leo

# Switch to user 'leo' (if needed for the container)
USER leo

# Set default shell
CMD ["/bin/bash"]
