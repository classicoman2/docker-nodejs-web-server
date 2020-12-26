
# Quina imatge empleo
FROM ubuntu:latest
USER root

# Crea working directory a maquina container
WORKDIR /home/app

# Instal·la node
RUN apt-get update
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_13.x
# -y = automatic yes to prompts Y/N
RUN apt-get -y install nodejs

# Copia el codi
COPY ./app .

EXPOSE 80

# Executa el servidor !
CMD [ "node", "server.js" ]
