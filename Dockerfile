
#base-image for BBB with node
##FROM resin/beaglebone-black-debian
FROM resin/beaglebone-node

# install deps on build server
#RUN npm install

# copy all files to /app dir
COPY . /app 

# Run sensor app when container runs on device
CMD ["node", "/app/tmp36.js"] 

MAINTAINER Charles Hamilton <charles@hudsonwerks.com>
