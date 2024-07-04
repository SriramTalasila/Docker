FROM nginx:stable-alpine

COPY ./dist/routing-demo /usr/share/nginx/html/flowcs

COPY nginx.conf /etc/nginx/conf.d/default.conf



EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]