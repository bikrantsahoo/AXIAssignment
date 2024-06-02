Assignment -1 Steps for running the app locally:

Step 1: Run Automated Tests
To run the automated tests, we use the dotnet test command.

Step 2: Package the Application as a Docker Image

Step 3: Deploy and Run the Image Locally or in a Public Cloud
We will use Docker commands to run the image locally. For cloud deployment, further steps involving Kubernetes (for GKE).

Directory Structure will look like below:
super-service/
|-- src/
|   |-- super-service/
|       |-- Controllers/
|       |-- Models/
|       |-- Program.cs
|       |-- Startup.cs
|       |-- super-service.csproj
|-- tests/
|   |-- super-service.Tests/
|       |-- super-service.Tests.csproj
|       |-- UnitTest1.cs
|-- Deploy.ps1
|-- Dockerfile

step5:
Create a Dockerfile in the root directory (super-service):
step6:
run the script by cmd  ./Deploy.ps1. voilaaaaa. app is running. if not fallback to the above steps.
