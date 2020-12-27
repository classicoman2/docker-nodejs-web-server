

# Create a simple web server with node & dockerize it

* Versió: 1.1
  - Afegit **volume**: en reiniciar el contenidor, se copia el contingut de `app` a dins del working directory del container
* Versió 1.2 (en branch dev1.2)
  - En desenvolupament 


Notes: he emprat la imatge `ubuntu:latest` - Amb una imatge preparada amb node és més fàcil.

## Funcionament

En aquesta versió, encara poc avançada, 
 - En fer `docker run` se copia el codi del servidor `/app` a dins del working directory
 - En fer canvis en `/app/ , se tornen a carregar al working directori _només en reiniciar el contenidor_

## Todo

- [ ] Afegir `package.json` i `package-lock.json` i `npm i` per instal·lar els paquets
- [ ] Afegir un **script inicial** en iniciar el contenidor que executi `npm i` per actualitzar canvis en `node_modules` i en fitxers `package*.json`

## Webgrafia

M'he ajudat d'aquestes pàgines, entre d'altres:

- [Crear un servidor web super simple amb node](https://www.w3schools.com/nodejs/nodejs_http.asp)
- [Create a Dockerfile for Node.js](https://docs.docker.com/get-started/nodejs/build-images/#create-a-dockerfile-for-nodejs)
  - [ENTRYPOINT](https://github.com/classicoman2/Skills-2020/blob/dev/Dockerfile)
  - [Dockerizing a Node.js web app](https://nodejs.org/en/docs/guides/nodejs-docker-webapp/)

## Com crear i executar contenidor

1.- Dins de la carpeta on està el `Dockerfile`, Crea la imatge amb

```js
    sudo docker build -t provanode2 .
```

2.- Executa el contenidor amb 

``` 
    # -d: detached (background)
    # -p , el primer port és del host
    # -v crea un volum, [més info](https://docs.docker.com/engine/reference/commandline/volume_create/#examples)

    sudo docker run -d   --name servidor_nodejs   -p 8080:80   -v ${PWD}/app:/home/app   provanode2
```

