#!/bin/bash

# Check if the tar.gz file already exists
if [ ! -f "udfbench-dataset.tar.gz" ]; then
    echo "Downloading udfbench-dataset.tar.gz..."
    gdown 18LVPSQmBqrQc8xpIGxZUWiFOyEkfghui
else
    echo "udfbench-dataset.tar.gz already exists, skipping download."
fi

tar -xvzf udfbench-dataset.tar.gz
