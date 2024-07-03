FROM node:latest
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm install
COPY . .
ENV PORT 4100
EXPOSE $PORT
CMD ["node", "server.js"]