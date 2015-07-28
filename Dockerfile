
#base-image for BBB with node
##FROM resin/beaglebone-black-debian
FROM resin/beaglebone-black-node

# RUN systemd in container, keeps the container open even if you main process fails.
ENV INITSYSTEM on

# install deps on build server
#RUN npm install
#RUN npm install -g bonescript
RUN apt-get update

#RUN TERM=dumb npm install -g bonescript 

# copy all files to /app dir
COPY . /app 

# Run sensor app when container runs on device
CMD ["node", "/app/tmp36.js"] 

MAINTAINER Charles Hamilton <charles@hudsonwerks.com>
