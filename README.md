# !!! Please read these notes !!! 
1. J'ai mis fichier .env dans /src qui contient l'application laravel

2. Si vous travaillez sur linux, peut-être que tu auras ce problème de droit: "The stream or file:/var/www/html/storage/logs/laravel.log" could not be opened in append mode...
La solution c'est qu'on va sur le dossier storage dans /src dans le terminal et exécuter: chmod -R 777 . 

3. Dans le fichier configuration nginx, j'ai oublié d'expliquer concrètement une ligne : 
       fastcgi_pass $BACKEND:9000;
   Ici, $BACKEND c'est le nom du service PHP et avec "entrypoint" il est remplacé par la valeur que je déclare dans "environment" 

# Diagramme 

graph TD

Client -->|http://localhost:8000/| NGINX1
Client -->|http://nginx1.docker.localhost/| A[Traefik:80]
Client -->|http://nginx2.docker.localhost/| A[Traefik:80]
Client -->|http://projet.docker.localhost/| A[Traefik:80] 
Client -->|http://localhost:8001/| NGINX2 
A --> NGINX1(NGINX1:80)
A --> NGINX2(NGINX2:80)

NGINX1 --> PHP1(PHP1:9000)
NGINX2 --> PHP2(PHP2:9000)
PHP1 --> MYSQL(MYSQL:3306)
PHP2 --> MYSQL

