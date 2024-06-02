FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /app
COPY ./src/super-service/*.csproj ./src/super-service/
RUN dotnet restore ./src/super-service/super-service.csproj
COPY ./src/super-service/. ./src/super-service/
WORKDIR /app/src/super-service
RUN dotnet publish -c Release -o out
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS runtime
WORKDIR /app
COPY --from=build /app/src/super-service/out ./
ENTRYPOINT ["dotnet", "super-service.dll"]
