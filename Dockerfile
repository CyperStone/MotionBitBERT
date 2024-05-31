FROM nvcr.io/nvidia/pytorch:21.11-py3

COPY requirements.txt .
RUN apt-get update && apt-get install -y python3-dev libfreetype6-dev coreutils nvidia-modprobe
RUN pip install -r requirements.txt

WORKDIR /app
COPY . /app