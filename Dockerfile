FROM node:latest

WORKDIR /home

COPY ./react-native-gesture-handler .
RUN yarn
RUN cd ./example
RUN yarn
CMD [ "yarn", "start" ]
