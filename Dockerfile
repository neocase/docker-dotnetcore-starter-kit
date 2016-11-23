FROM microsoft/dotnet:latest
MAINTAINER Samir Bouaked "sbouaked@neocasesoftware.com"
COPY . /app
WORKDIR /app

RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]

EXPOSE 5000
ENV ASPNETCORE_URLS http://*:5000

ENTRYPOINT ["dotnet", "run"]
