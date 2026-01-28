FROM node:18

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Change exposed port to 80
EXPOSE 80

CMD ["npm", "start"]

