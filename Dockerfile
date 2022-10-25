FROM node:16
EXPOSE 8080
COPY src/index.js .
CMD [ "node", "." ]
