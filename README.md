# Puissance4
Jeu puissance4 en Smalltlalk


Projet durant le module ' Projet de Conception Objet '. Année scolaire 2018 en licence 2 Informatique à l'Université de Bretagne Occidentale.
Élève : Augustin MORVILLEZ & Julien MANNECHEZ

Développement d'un Puissance 4 avec une architecture MVC sous l'environnement VisualWorks.

## Présentation technique

Nous avons donc 3 classes pour notre modèle, vue et controleur, ainsi qu'une dernière pour l'interface graphique.

  **1. Puissance4Controller**
  
Notre Controleur qui se chargera des _évenèments_ porté sur l'application.

Méthodes d'instance | Description
---|---
redButtonPressedEvent: | A chaque clique gauche fait sur notre plateau de jeu cette méthode nous permet de passer au joueur suivant et de vérifier s'il y a victoire ou non.
mouseMovedEvent: | On suit le curseur de l'utilisateur avec le jeton actuellement en jeu.
  
  
  **2. Puissance4Model**
  
Méthodes d'instance | Description
---|---
initialize | Méthode classique d'initialisation.
dimension | Retourne la dimension de notre plateau sous forme de point.
detectPosValide: |  Retourne 1 si la position donnée en paramètre est occupée sinon nil.
isWining:pos: |  Retourne 1 si la position donnée en paramètre est occupée avec la même couleur de jeton sinon nil.


Méthodes de classes | Description
---|---
testGrille | Tableau de tableau formant notre plateau de jeu.
testPiece | un jeton en général.
testPieceJaune | un tableau définissant un jeton jaune.
testPieceRouge | un tableau définissant un jeton rouge.

  
  **3. Puissance4View**
  
Affichage de notre interface.
  
Méthodes d'instance | Description
---|---
initialize | Méthode classique d'initialisation.
defaultControllerClass | Fait un lien avec notre controleur et la vue.
displayOn | S'occupe de l'affichage de notre modèle.


  **4. UIPuissance4**
  
L'interface de notre application.  
  
Méthodes d'instance | Description
---|---
initialize | Méthode classique d'initialisation.
processusStart | Lance le processus en appuyant sur le bouton play.
processusStop | Arrête le processus en appuyant sur le bouton reset.
downPiece | Tourne en boucle durant le processus, fait tomber la pièce que l'on joue dans notre plateau.
postOpenWith: | bouton reset disable et play enable au moment du lancement de l'interface.
changeGrille | Affiche la position sur laquelle on joue.
changeJoueur | Affiche le numéro du joueur en jeu, 1 ou 2.
