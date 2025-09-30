FROM ubuntu:22.04

# Prevents interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y \
    time \
    collectl \
    bison \
    cmake \
    make \
    curl \
    flex \
    pkgconf \
    gcc \
    g++ \
    libicu-dev \
    libreadline-dev \
    sqlite3 \
    python3 \
    python3-dev \
    python3-pip \
    python3.10 \
    python3.10-dev \
    build-essential\
    openjdk-8-jre\
    openjdk-8-jdk \
    scala \
    git\
    maven \
    wget \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Set environmental variables
ENV RESULTSPATH=app/results
ENV PYTHONEXEC=/usr/bin/python3
ENV EXTERNALPATHSSD=app/dataset/files
ENV DATASETSPATHSSD=app/dataset

RUN find . -type f -name "*.sh" -exec chmod +x {} \;

COPY automations/requirements.txt .

RUN pip install -r requirements.txt --upgrade --user