FROM ubuntu:latest

RUN apt update -y

# install nodejs with npm and npx
RUN apt install nodejs npm -y

# install .NET SDK

RUN apt install -y apt-transport-https
RUN apt install -y dotnet-sdk-6.0

# install git
RUN apt install -y git
