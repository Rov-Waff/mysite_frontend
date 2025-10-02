FROM docker.m.daocloud.io/node:22-alpine AS builder
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build
FROM docker.m.daocloud.io/nginx:stable-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /app/dist /var/www/mysite
EXPOSE 80
CMD [ "nginx","-g","daemon off;" ]