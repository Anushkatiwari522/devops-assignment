FROM nginx:alpine

RUN ls -la / \
    && echo "Hello from inside the Docker build" > /tmp/message.txt \
    && cat /tmp/message.txt

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
