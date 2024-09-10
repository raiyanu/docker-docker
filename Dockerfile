FROM node

WORKDIR /usr/src/app

COPY ./syntaxia-blog/package*.json ./

RUN yarn install && yarn run build

COPY . .

EXPOSE 3000

CMD [ "yarn", "run", "preview" ]