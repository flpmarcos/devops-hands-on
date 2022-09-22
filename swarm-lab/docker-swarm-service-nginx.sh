docker service create --name demo --publish 80:80 nginx
docker service ls
docker service ps demo
docker service scale demo=3
docker service ps demo