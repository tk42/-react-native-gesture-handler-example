FROM node:latest

WORKDIR /home

COPY ./react-native-gesture-handler .
RUN yarn

WORKDIR /home/example
RUN yarn
