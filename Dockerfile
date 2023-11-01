# Use an official Ubuntu 18.04 as a parent image
FROM ubuntu:18.04

# Set environment variables (if needed)
ENV DEBIAN_FRONTEND=noninteractive

# Update packages and install dependencies
RUN apt-get update && \
    apt-get install -y python3-venv zip && \
    rm -rf /var/lib/apt/lists/* && \
    touch /root/.bash_aliases && \
    echo "# PYTHON_ALIAS_ADDED" >> /root/.bash_aliases && \
    echo "alias python='python3'" >> /root/.bash_aliases

# Optionally, you can add your application setup here.
# Set the working directory
WORKDIR /app

# Copy your application files (if any)
COPY . /app

# Add the "Hello, World!" script and execute it
RUN echo "print('Hello, World!')" > hello.py

# Define the command to run your script
CMD ["/usr/bin/python3", "hello.py"]

