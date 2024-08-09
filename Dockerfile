# Use the official Ubuntu image as a base
FROM ubuntu:latest

# Update package
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the entire current directory into the container at /app
COPY . /app

# Install req
RUN pip3 install -r requirements.txt --break-system-packages

# Run the app
CMD ["python3", "main.py"]
