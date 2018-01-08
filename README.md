## Docker commands

```
docker images
docker ps
```

```
docker build -t hellogo:latest  .

docker tag hellogo:latest djking/hellogo:latest

docker push djking/hellogo:latest

docker run -it -p 6060:8080 --rm hellogo

Reference to : http.ListenAndServe(":8080", nil)
curl localhost:6060

```

```
docker ps
docker exec -i -t <id> /bin/bash
docker stop <id>
```

```
docker images
docker history <id>
docker rmi <id>
```

```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
```

```
docker system prune -a -f
```
