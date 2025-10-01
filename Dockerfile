# Dockerfile
FROM python:3.10

RUN apt-get update && apt-get install -y \
    postgresql-client postgresql-plpython3-17 wget curl vim \
    && rm -rf /var/lib/apt/lists/*

COPY automations/requirements.txt .

RUN pip install -r requirements.txt --upgrade --user

WORKDIR /app

# Set a default command otherwise the container will exit immediately.
CMD ["tail", "-f", "/dev/null"]