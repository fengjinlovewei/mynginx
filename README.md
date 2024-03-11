##  配置
docker network create fengjin-network

docker build . -t fengjin/mynginx

docker run -it --name mynginx --network fengjin-network --network-alias mynginx -p 443:443 -d fengjin/mynginx

#### 删除正在运行的容器
docker rm -f id或名称

#### 删除正在运行的images
docker rmi -f id或名称