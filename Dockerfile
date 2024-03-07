# Stage 1
FROM node:18 as build-stage

WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
RUN npm install -g serve
EXPOSE 5000

CMD ["npm","run", "start"]


