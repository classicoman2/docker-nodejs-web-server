

# Create a simple web server with node & dockerize it

Ho he fet a partir d'una imatge `ubuntu:latest`. Amb una imatge de node preparada és més fàcil.

## Webgrafia

M'he ajudat d'aquestes pàgines, entre d'altres:

- [Crear un servidor web super simple amb node](https://www.w3schools.com/nodejs/nodejs_http.asp)
- [Create a Dockerfile for Node.js](https://docs.docker.com/get-started/nodejs/build-images/#create-a-dockerfile-for-nodejs)

## Com crear i executar contenidor

1.- Dins de la carpeta on està el `Dockerfile`, Crea la imatge amb

    sudo docker build -t provanode2 .

2.- Executa el contenidor amb 

    # -d: detached (background)   /  -p , el primer port és del host
    sudo docker run -d -p 8080:80 provanode2

## Ampliació

En cas d'haver d'instal·lar dependencies en el servidor, ens servirà aquest enllaç: [Dockerizing a Node.js web app](https://nodejs.org/en/docs/guides/nodejs-docker-webapp/)
