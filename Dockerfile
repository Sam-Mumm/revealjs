FROM node:11.15.0-alpine as node

ADD revealjs /app
WORKDIR /app
RUN sed -i '/^.*node-qunit-puppeteer.*$/d' package.json
RUN sed -i '/^.*qunit.*$/d' package.json
RUN sed -i '/^const qunit.*$/d' gulpfile.js
RUN npm set audit false \
    && npm install \
    && npm cache clean --force

EXPOSE 8000

CMD ["npm","start"]
