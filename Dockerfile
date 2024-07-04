FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY ./dist/routing-demo /usr/share/nginx/html/flowcs

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]