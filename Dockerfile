FROM nginx:latest

# Copy the Nginx conf file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the HTML file
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]