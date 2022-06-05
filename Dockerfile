FROM node:16.14 AS compile-frontend
WORKDIR /app

COPY . .

RUN node -v
RUN npm -v

RUN npm install

RUN npm run build

FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=compile-frontend /app/dist/ /var/www/data/
RUN ls -la /var/www/data/

# Set timezone
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
