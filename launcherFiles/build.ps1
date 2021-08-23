docker network create --subnet=172.18.0.0/16 dockernet
cd servers
docker build -t servers_image .
docker run -d --net dockernet -h server1 --ip 172.18.0.3 -p 127.0.0.1:8001:8000 servers_image
docker run -d --net dockernet -h server2 --ip 172.18.0.4 -p 127.0.0.1:8002:8000 servers_image
cd ..
cd middleware
docker build -t middleware_image .
docker run --net dockernet -h middleware --ip 172.18.0.2 -p 127.0.0.1:8000:8000 -it middleware_image
