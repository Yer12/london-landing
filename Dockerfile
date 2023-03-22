FROM nginx:stable-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY css /usr/share/nginx/html/css
COPY fonts /usr/share/nginx/html/fonts
COPY img /usr/share/nginx/html/img
COPY pages /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

