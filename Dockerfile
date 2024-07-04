FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

COPY ./dist/docker/browser /usr/share/nginx/html/flowcs

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]