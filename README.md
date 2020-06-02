# Projet QGIS de démo NORMAT-2 Vaud

#### Ceci est une projet de démonstration sans aucune garantie ####

## Configuration

### Création de la strcture de base de donnée

* Créer un schéma normat_vd_demo et lui donner tous les droits nécessaires en fonction de votre environnement
* Restaurer le fichier db/normat_vd_demo.backup dans ce nouveau schéma

### Adapation du projet qgis à l'environnement local

* Ouvrir le projet qgis/vd_normat_3.10.qgs dans un éditeur texte (notepad, atom,...)
* Remplacer les paramètres de configuration afin qu'ils correspondent à votre environnement. En particulier:
    * source="dbname='votre_base_postgis' 
    * host=votre_serveur_postgis 

Ouvrir le projet et essayer de saisir un polygon de la couche "Plan d'affectation (affectationprimaire_surfacedezones) puis de l'exporter en xtf avec model baker. 

## Configuration de l'export model baker

* télécharger les modèle ili sur le site https://www.vd.ch/themes/territoire-et-construction/amenagement-du-territoire/plan-daffectation-communal/directive-normat/
* Configurer model baker pour lui préciser où se trouvent ces fichier dans votre environnement

Documentation model baker: https://opengisch.github.io/QgisModelBaker/docs/en/

Documentation ili2pg: http://www.eisenhutinformatik.ch/interlis/ili2pg/



