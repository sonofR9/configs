# Use the official Jupyter PyTorch Notebook image with CUDA 12 and Jupyter Lab
FROM quay.io/jupyter/pytorch-notebook:cuda12-lab-4.3.5

ENV DEBIAN_FRONTEND=noninteractive

USER root
RUN apt-get -qq update && \
    apt-get install -y wget unzip git cmake xvfb sudo freeglut3-dev ffmpeg

USER $NB_USER

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install additional Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .
