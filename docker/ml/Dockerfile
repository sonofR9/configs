# Use the official Jupyter PyTorch Notebook image with CUDA 12 and Jupyter Lab
FROM quay.io/jupyter/pytorch-notebook:cuda12-lab-4.3.5

ENV DEBIAN_FRONTEND=noninteractive

USER root
RUN apt-get -qq update && \
    apt install -y wget unzip git cmake xvfb sudo freeglut3-dev ffmpeg \
    libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev \
    libportmidi-dev swig

USER $NB_USER

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install additional Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

COPY start-xvfb.sh /usr/local/bin/start-notebook.d/start-xvfb.sh

# Copy the rest of the application code into the container
# COPY . .
