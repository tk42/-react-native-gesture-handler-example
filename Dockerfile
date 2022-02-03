FROM node:latest

WORKDIR /home

COPY ./react-native-gesture-handler .
RUN yarn

WORKDIR /home/example
RUN yarn

ENV NODE_OPTIONS=--openssl-legacy-provider