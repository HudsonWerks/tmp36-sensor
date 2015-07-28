FROM resin/beaglebone-python

# RUN systemd in container, keeps the container open even if you main process fails.
ENV INITSYSTEM on

# Install deps
RUN apt-get update
RUN apt-get install build-essential python-dev python-setuptools python-pip python-smbus -y
RUN pip install Adafruit_BBIO

# copy current directory into /app
COPY . /app

# run python script when container lands on device
CMD ["python", "/app/tmp36.py"]
