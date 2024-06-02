Write-Output "Running automated tests..."
dotnet test ./tests/super-service.Tests/super-service.Tests.csproj
if ($LASTEXITCODE -ne 0) {
    Write-Error "Tests failed. Aborting deployment."
    exit $LASTEXITCODE
}

$dockerImageName = "super-service:latest"
Write-Output "Building Docker image..."
docker build -t $dockerImageName .

Write-Output "Running Docker container locally..."
docker run -d -p 8080:80 --name super-service $dockerImageName

Write-Output "Deployment done. The application is running at http://localhost:8080"
