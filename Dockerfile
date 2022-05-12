FROM node:latest

RUN apt update -y

# install .NET SDK



RUN apt install -y gpg
RUN wget -O - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o microsoft.asc.gpg
RUN mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
RUN wget https://packages.microsoft.com/config/ubuntu/22.04/prod.list
RUN mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
RUN chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
RUN chown root:root /etc/apt/sources.list.d/microsoft-prod.list
RUN apt update -y; \
  apt install -y apt-transport-https && \
  apt update && \
  apt install -y dotnet-sdk-6.0

# install git
RUN apt install -y git
