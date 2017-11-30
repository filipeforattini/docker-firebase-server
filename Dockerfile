FROM node:alpine

ENV FIREBASE_SECRET=secret
ENV FIREBASE_BASEDIR=/app/server
ENV FIREBASE_FILE=/app/server/data.json
ENV FIREBASE_DATA={}
ENV FIREBASE_ADDRESS=0.0.0.0
ENV FIREBASE_PORT=5000

RUN npm i -g firebase-server

RUN mkdir -p ${FIREBASE_BASEDIR}
WORKDIR /app/server

RUN echo "{}" > data.json

ENTRYPOINT firebase-server -p ${FIREBASE_PORT} -f ${FIREBASE_DATA}} -d ${FIREBASE_DATA} -a ${FIREBASE_ADDRESS}

EXPOSE 5000