# Correction (9,25/10)

## Dockerfile (4/4)
Rien à redire, c'est parfait.

## Commentaire dockerfile (2,5/3)
- Tes commentaires sont très longs et répétitifs. Il faut faire des commentaires concis et précis. Par exemple, tu peux faire un commentaire pour la ligne `FROM gcc:latest` qui ressemble à cela : "*Use the official gcc image as a parent image. This image provides a gcc compiler environment with all the necessary libraries to compile or C project. Or project work with the latest version of gcc so we use the latest version of the image.*"

## README (2,75/3)
Bon travail, voici quelques points d'amélioration pour avoir la totalité des points :
- Pour la commande du git clone tu peux mettre le lien en dur, ça ne pose pas de problème, sinon ça fait plus tutoriel d'utilisation de git plutôt que la documentation de ton projet.
- Ta manière d'arrêter ton container en redémarrant le service docker est un peu violente et peut mettre en avant que ton projet n'est pas stable si ce dernier fait planter un service de ton système. Il vaut mieux utiliser uniquement les commandes de docker.
