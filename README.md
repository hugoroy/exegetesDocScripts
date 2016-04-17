
exegetesDocScripts
==================

Outils de production de documents juridiques pour les Exégètes
Amateurs. [Site web](https://exegetes.eu.org/outils/).

## Installation et pré-requis

Ne pas oublier les submodules Git :

    git submodule update --init --recursive

Ces outils de production de documents nécessitent :

* [Pandoc] *dans une version récente*
* LaTeX
* Python
* Zsh (TODO: devrait pouvoir être remplacé par un shell plus commun)

## Description des composants

Il y a trois grandes sortes de composants utilisés pour produire nos
documents à partir de nos fichiers sources.

### Get-Pad

Le script [get-pad] permet

 1. de récupérer l'exportation texte brut d'un “pad” nécessitant un
    compte Etherpad (sur une instance Etherpad classique et non sur un
    Etherpad Lite) ;

 2. de scanner le contenu exporté pour détecter si le contenu d'autres
    pads doit également être récupéré.
 
### Pandoc et Filtres

[Pandoc] est utilisé pour convertir le texte brut d'un pad écrit en
markdown vers un format de lecture.

Par exemple, le script `pad2latex` convertit vers un fichier LaTeX qui
servira à produire le PDF envoyé aux juridictions.

Les filtres sont utilisés pour effectuer des opérations sur le contenu
des documents lorsque celui-ci est traité par [Pandoc], notamment pour
des commandes spéciales ou certaines de nos spécificités de rédaction.

La conversion faite par Pandoc nécessite aussi d'autres fichiers (dans
`pandocincludes/`), comme le modèle LaTeX ou encore le style de
citation que nous utilisons avec [pandoc-citeproc] (filtre-moteur de
citation inclus dans Pandoc).

### Templates et Data

Les modèles que nous utilisons comme base pour créer nos nouveaux
documents sont dans `templates/`.

Les fichiers réutilisés dans nos documents comme notre base
bibliographique ou notre format de titre LaTeX sont dans `data/`.

[pandoc]: http://pandoc.org/
[pandoc-citeproc]: https://github.com/jgm/pandoc-citeproc
[get-pad]: https://github.com/hugoroy/get-pad/

## À faire

- [ ] Corriger les dépendances de get-pad
- [ ] Faire les variables dans pad2latex.zsh
- [ ] Script et filtres d'exportation en HTML
- [ ] Améliorer le style de citation `pandocincludes/french-legal.csl`
