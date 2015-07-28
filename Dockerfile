FROM strictlybusiness/beaglebone-black-node

ADD . /app
WORKDIR /app

RUN npm install

CMD ["node", "tmp36.js"]
