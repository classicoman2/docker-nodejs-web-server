
# Quina imatge empleo
FROM ubuntu:latest
USER root

# Crea working directory a maquina container
WORKDIR /home/app

# Instal·la node
RUN apt-get update 
# Per si fan falta posteriors tasques de manteniment dins el contenidor amb docker exec
RUN apt-get -y install nano
RUN apt-get -y install curl

# Instal·lar versio Node.js LTS (v14.x):: https://github.com/nodesource/distributions/blob/master/README.md#debmanual

RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
# -y = automatic yes to prompts Y/N
RUN apt-get install -y nodejs

# Copia el codi
COPY ./app .

# Copia el script inicial
COPY ./scripts/start.sh /home/start.sh
RUN chmod +x /home/start.sh

EXPOSE 80

# Script inicial
ENTRYPOINT /home/start.sh

# Executa el servidor !
CMD [ "node", "server.js" ]
