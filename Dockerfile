FROM nginx:stable-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY css /usr/share/nginx/html
COPY fonts /usr/share/nginx/html
COPY img /usr/share/nginx/html
COPY index.html /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

