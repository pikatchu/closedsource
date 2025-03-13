# Use Ubuntu as base image
FROM ubuntu:latest

# Set environment variables to prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install Emacs, GCC
RUN apt update && apt install -y \
    emacs \
    gcc \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Create user 'leo' and set password
RUN useradd -m -s /bin/bash leo && echo "leo:jasmina" | chpasswd

# Add 'leo' to sudoers (optional, if needed)
RUN usermod -aG sudo leo

# Switch to user 'leo' (if needed for the container)
USER leo

# Set default shell
CMD ["/bin/bash"]
