dotnet test ./super-service/tests

dotnet publish ./super-service/src/SuperService.Api -c Release -o ./super-service/artifacts

docker build -t super-service ./super-service/src/SuperService.Api

docker run -d -p 8080:80 --name super-service super-service

docker tag super-service dockerbabuli/super-service
docker push dockerbabuli/super-service

docker stop super-service
docker rm super-service
docker rmi super-service
