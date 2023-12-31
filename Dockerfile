FROM node:14-alpine

WORKDIR /app

COPY package*.json /app/

RUN npm install --loglevel verbose

COPY . /app/

# Run Apps

CMD [ "npm", "run", "start" ]
