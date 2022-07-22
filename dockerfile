FROM node:alpine
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
ENV PORT=8000
EXPOSE 4000
CMD [ "npm" , "start" ]