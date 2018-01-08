## Docker commands

```
docker images
docker ps
```

```
docker build -t helloworldgolang:latest  .

docker tag helloworldgolangdocker:latest djking/helloworldgolang:latest

docker push djking/helloworldgolangdocker:latest

docker run -it -p 6060:8080 --rm hello

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
