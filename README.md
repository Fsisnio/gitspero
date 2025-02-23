# Documentation du Projet R_advanced_project : Le package gitspero

## Auteur
Spéro FALADE, Master ECAP, Université de Nantes

## Introduction
Ce projet est un package R avancé permettant de générer des rapports d'analyse basés sur des données régionales. Il inclut des fonctionnalités de création de rapports automatisés, une vignette explicative, et une documentation complète avec pkgdown.

## Étapes de Développement

### 1. Initialisation du Projet

#### a. Clonage du dépôt et configuration du package avec Git et GitHub.
```bash
git clone https://github.com/utilisateur/R_advanced_project.git
cd R_advanced_project
```

#### b. Clonage du dépôt et configuration du package avec R
```R
usethis::create_package("R_advanced_project")
usethis::use_git()
usethis::use_github()
```

### 2. Ajout de la Fonction `generer_rapport`

#### a. Création du dossier nécessaire et ajout du fichier de la fonction :
```bash
mkdir inst
touch R/generer_rapport.R
```

#### b. Documentation et enregistrement des modifications :
##### b.1 Dans R
```R
devtools::document()
```

##### b.2 Dans le terminal 
```bash
git add .
git commit -m "Ajout de la fonction generer_rapport"
git push
```

### 3. Création d'une Vignette
Ajout d'une vignette pour documenter l'utilisation du package :

#### a. Dans R
```R
usethis::use_vignette("Generer_un_rapport_d_analyses")
devtools::build_vignettes()
```

#### b. Commit et push
```bash
git add .
git commit -m "Ajout de la vignette"
git push
```

### 4. Configuration de pkgdown

#### a. Installation et configuration de la documentation en ligne :
```R
install.packages("pkgdown")
usethis::use_pkgdown_github_pages()
pkgdown::build_site()
```

#### b. Commit et push
```bash
git add .
git commit -m "Ajout de la documentation pkgdown"
git push
```

### 5. Test et Installation du Package
Installation du package depuis GitHub et test de la fonction principale :
```R
remotes::install_github("utilisateur/R_advanced_project")
library(R_advanced_project)
generer_rapport("data", "rapport_lyon.html")
```

Ce projet fournit une solution clé en main pour la génération de rapports d'analyse en R, avec une documentation complète et une accessibilité facilitée via GitHub.
