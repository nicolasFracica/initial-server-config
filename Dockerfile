FROM node:12

WORKDIR /<proyecto>

COPY ["package*.json", "./"]

RUN npm install

COPY [".", "./"]

EXPOSE 8081

ENV PORT=8081

ENV NODE_ENV=dev

CMD ["npm", "run", "dev"]
