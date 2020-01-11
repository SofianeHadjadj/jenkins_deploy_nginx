FROM nginx

COPY hello.html /usr/share/nginx/html

EXPOSE 80

CMD ["/etc/init.d/ngnix start"]
