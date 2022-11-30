# !!! Please read these notes !!! 
1. J'ai mis fichier .env dans /src qui contient l'application laravel

2. Si vous travaillez sur linux, peut-être que tu auras ce problème de droit:
 
![Screenshot from 2022-11-25 21-29-55](https://user-images.githubusercontent.com/59959039/204053111-24f11cb6-c43a-4e6b-854a-5de0b57df702.png)

La solution c'est qu'on va au dossier storage dans /src sur le terminal et exécuter: chmod -R 777 . 



3. Dans le fichier configuration nginx, j'ai oublié d'expliquer concrètement une ligne : 
       fastcgi_pass $BACKEND:9000;
   - Ici, $BACKEND c'est le nom du service PHP et avec "entrypoint" il est remplacé par la valeur que je déclare dans "environment" 
   
4. Exécuter cette commande dans le terminal pour créer le table "users" dans la base de donnée
      - docker-compose exec app php artisan migrate:fresh --seed

# Diagramme 

![Screenshot from 2022-11-25 21-20-00](https://user-images.githubusercontent.com/59959039/204052360-e4051ecc-bbdc-4bb2-a41b-b976b2cfd6dc.png)
