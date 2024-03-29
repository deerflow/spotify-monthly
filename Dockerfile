FROM node:16.15-alpine
WORKDIR /home/app
COPY src .
COPY package*.json ./
COPY .env .
COPY tsconfig.json .
RUN npm ci
RUN npm run build
EXPOSE 4000
ENV NODE_ENV = 'production'
CMD npm run start:prod