FROM node:18-alpine

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]

## BELOW IS FOR PRODUCTION

# FROM node:18-alpine

# WORKDIR /app

# COPY package.json .

# RUN npm install

# RUN npm i -g serve

# COPY . .

# RUN npm run build

# EXPOSE 3000

# CMD [ "serve", "-s", "dist" ]