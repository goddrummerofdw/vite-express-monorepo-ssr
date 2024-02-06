FROM node:18.17.0
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install 
COPY . .
RUN /usr/local/bin/yarn build
EXPOSE 5173
CMD ["yarn", "start"]
