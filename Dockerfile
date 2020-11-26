FROM node

RUN mkdir /app
workdir /app

COPY package.json /app
RUN yarn install

COPY . /app

# RUN yarn test && \
#    yarn build

CMD yarn start

