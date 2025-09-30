#!/bin/bash

# Check if the tar.gz file already exists
if [ ! -f "udfbench-dataset.tar.gz" ]; then
    echo "Downloading udfbench-dataset.tar.gz..."
    wget https://zenodo.org/records/14260428/files/udfbench-dataset.tar.gz
else
    echo "udfbench-dataset.tar.gz already exists, skipping download."
fi

tar -xvzf udfbench-dataset.tar.gz
