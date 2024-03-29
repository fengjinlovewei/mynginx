FROM nginx:latest

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./keys /etc/nginx/keys

COPY ./common /etc/nginx/

 #复制当前目录下的所有文件到Nginx默认网页目录
COPY ./html /usr/share/nginx/html   

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
