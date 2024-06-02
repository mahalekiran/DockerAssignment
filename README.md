# DockerAssignment
Docker Assignment

***Step 1:*** Create a index file as index.html
***Step 2:*** Create a nginx configuration file as nginx.conf
***Step 3:*** Create a Docker file
***Step 4:*** Build  Docker 
```
 docker build -t mahalekiran/nginx-conf .
 ```
***Step 5:*** Create an ECR repository on AWS cloud
https://us-east-2.console.aws.amazon.com/ecr/public-registry/repositories?region=us-east-2

Create repository : nginx-config
Run the below commands:
```
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 515210271098.dkr.ecr.us-east-2.amazonaws.com

```

Identify the local image to push.
Check the docker images list:

```
docker images
```
Tag your image with the Amazon ECR registry, repository, and optional image tag name combination to use.
```
docker tag 38a1bf16c0d1 515210271098.dkr.ecr.us-east-2.amazonaws.com/nginx-config:latest
```

Push the image using the docker push command:
```
docker push 515210271098.dkr.ecr.us-east-2.amazonaws.com/nginx-config:latest
```
