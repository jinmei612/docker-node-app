FROM node:10-alpine
RUN mkdir -p /src/app
WORKDIR /src/app
COPY package.json /src/app/package.json
RUN npm install
RUN npm install --save dd-trace
COPY . /src/app
EXPOSE 3000
CMD [ "npm", "start" ]
