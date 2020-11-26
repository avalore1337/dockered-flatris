FROM node

RUN mkdir /app
workdir /app

COPY package.json /app
RUN yarn install

COPY . /app

# RUN yarn test && \
RUN    yarn build

CMD yarn start

