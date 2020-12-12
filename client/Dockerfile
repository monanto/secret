# build stage
FROM node:10-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN apk --no-cache add g++ gcc libgcc libstdc++ linux-headers make python
RUN npm install
COPY . .
RUN npm run build && npm run generate

# production stage
FROM nginx:alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
