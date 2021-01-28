FROM node

WORKDIR /var/app

COPY package.json /var/app
RUN yarn install

COPY . /var/app

# RUN yarn test && \
RUN    yarn build

EXPOSE 3000

CMD yarn start

