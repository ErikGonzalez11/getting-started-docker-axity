FROM node:18-alpine
WORKDIR /app
COPY app/yarn.lock app/package.json ./
RUN npm install --omit dev
COPY app/spec ./spec
COPY app/src ./src
CMD node src/index.js
EXPOSE 3000