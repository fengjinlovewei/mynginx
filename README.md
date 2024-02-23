##  配置
docker network create fengjin-network

docker build . -t fengjin/mynginx

docker run -it --name mynginx --network fengjin-network --network-alias mynginx -p 80:80 -d fengjin/mynginx