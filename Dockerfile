FROM resin/beaglebone-python

# RUN systemd in container, keeps the container open even if you main process fails.
ENV INITSYSTEM on

# copy current directory into /app
COPY . /app

# run python script when container lands on device
CMD ["python", "/app/tmp36.py"]
