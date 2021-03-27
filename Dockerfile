FROM node:alpine as builder

WORKDIR /var/app

COPY package.json /var/app
RUN yarn install

COPY . /var/app

# RUN yarn test && \
RUN    yarn build


FROM node:alpine

WORKDIR /app

COPY --from=builder /var/app/  .

EXPOSE 3000

CMD yarn start