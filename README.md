# !!! Please read these notes !!! 
1. J'ai mis fichier .env dans /src qui contient l'application laravel

2. Si vous travaillez sur linux, peut-être que tu auras ce problème de droit: "The stream or file:/var/www/html/storage/logs/laravel.log" could not be opened in append mode...
La solution c'est qu'on va sur le dossier storage dans /src dans le terminal et exécuter: chmod -R 777 . 

3. Dans le fichier configuration nginx, j'ai oublié d'expliquer concrètement une ligne : 
       fastcgi_pass $BACKEND:9000;
   Ici, $BACKEND c'est le nom du service PHP et avec "entrypoint" il est remplacé par la valeur que je déclare dans "environment" 

# Diagramme 

![Screenshot from 2022-11-25 21-20-00](https://user-images.githubusercontent.com/59959039/204052360-e4051ecc-bbdc-4bb2-a41b-b976b2cfd6dc.png)
