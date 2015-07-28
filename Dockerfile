FROM strictlybusiness/beaglebone-black-node

ADD . /app
WORKDIR /app

#RUN npm install
RUN TERM=dumb npm install -g bonescript

CMD ["node", "tmp36.js"]
