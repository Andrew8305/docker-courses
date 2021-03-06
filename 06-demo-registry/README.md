Create a volume

`docker volume create registry-data`

Then 

```
docker run -d \
  -p 5000:5000 \
  --restart=always \
  --name registry \
  -v registry-data:/var/lib/registry \
  registry:2
```

then 

```
docker pull ubuntu
docker run --name demo6 -it ubuntu bash
```

Inside the container
> touch /demo6.txt

Exit from container and then

```
docker commit <containeId> image6
docker tag image6 localhost:5000/image6
docker push localhost:5000/image6
docker rmi -f localhost:5000/image6

docker pull localhost:5000/image6

docker stop registry && docker rm -v registry
```

Access :
* http://localhost:5000/v2/_catalog
* http://localhost:5000/v2/ubuntu/tags/list
