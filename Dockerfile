FROM node:15

WORKDIR /app

COPY public/ .
COPY src/ .
COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .
EXPOSE 3000
CMD ["npm","start" ]
