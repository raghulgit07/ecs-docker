FROM public.ecr.aws/docker/library/node:alpine

WORKDIR /express-app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]
