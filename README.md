
# Documentation du Projet R_advanced_project : Le package gitspero

## Auteur
Spéro FALADE, Master ECAP, Université de Nantes

## Introduction
Ce projet est un package R avancé permettant de générer des rapports d'analyse basés sur des données régionales réalisé dans le cadre du cours de R avancé et de Github. Il inclut des fonctionnalités de création de rapports automatisés, une vignette explicative, et une documentation complète avec pkgdown.

## Fonctionnalités

### Fonctions incluses dans le package

1. **`calcul_distribution_age`**  
   Cette fonction calcule la distribution des âges d'un dataframe `df` contenant une colonne `Date.de.naissance`. Elle renvoie un vecteur de quartiles des âges.

   **Paramètres** :
   - `df` : Un `data.frame` contenant une colonne `Date.de.naissance` au format Date.
   
   **Retour** :
   - Un vecteur de quartiles des âges.

2. **`compter_nombre_d_adjoints`**  
   Cette fonction compte le nombre d'adjoints dans un dataframe `df` en fonction de la présence du mot "adjoint" dans la colonne `Libellé.de.la.fonction`.

   **Paramètres** :
   - `df` : Un `data.frame` contenant la colonne `Libellé.de.la.fonction`.
   
   **Retour** :
   - Un entier représentant le nombre d'adjoints trouvés.

3. **`compter_nombre_d_elus`**  
   Cette fonction retourne le nombre total d'élus dans un dataframe `df`.

   **Paramètres** :
   - `df` : Un `data.frame` des élus.
   
   **Retour** :
   - Un entier représentant le nombre d'élus.

4. **`trouver_l_elu_le_plus_age`**  
   Cette fonction permet de trouver l'élu(e) le plus âgé(e) dans un dataframe `df` en utilisant la colonne `Date.de.naissance`.

   **Paramètres** :
   - `df` : Un `data.frame` contenant la colonne `Date.de.naissance`.
   
   **Retour** :
   - Un `data.frame` contenant l'élu(e) le plus âgé(e).

5. **`summary.commune`**  
   Cette fonction génère un résumé des statistiques pour une commune spécifique. Elle imprime des informations telles que le nombre d'élus, la distribution des âges et l'élu(e) le plus âgé(e).

   **Paramètres** :
   - `x` : Un `data.frame` contenant les données d'une commune.
   
   **Retour** :
   - Aucun retour, mais la fonction affiche des statistiques.

6. **`summary.departement`**  
   Cette fonction génère un résumé des statistiques pour un département spécifique. Elle affiche des informations comme le nombre de communes, le nombre d'élus et la distribution des âges.

   **Paramètres** :
   - `x` : Un `data.frame` contenant les données d'un département.
   
   **Retour** :
   - Aucun retour, mais la fonction affiche des statistiques.

7. **`plot.commune`**  
   Cette fonction génère un graphique à barres pour les catégories socio-professionnelles des élus dans une commune, à partir du dataframe `df` contenant `Libellé.de.la.catégorie.socio.professionnelle`.

   **Paramètres** :
   - `x` : Un `data.frame` avec `Libellé.de.la.catégorie.socio.professionnelle`.
   
   **Retour** :
   - Un graphique `ggplot2` représentant les catégories socio-professionnelles.

8. **`plot.departement`**  
   Cette fonction génère un graphique à barres pour les catégories socio-professionnelles des élus dans un département, affichant uniquement les 10 professions les plus fréquentes.

   **Paramètres** :
   - `x` : Un `data.frame` avec `Libellé.de.la.catégorie.socio.professionnelle`.
   
   **Retour** :
   - Un graphique `ggplot2` représentant les top 10 catégories socio-professionnelles.

---

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
remotes::install_github("fsisnio/gitspero")
library(gitspero)
generer_rapport("data", "rapport.html")
```

Ce projet fournit une solution clé en main pour la génération de rapports d'analyse en R, avec une documentation complète et une accessibilité facilitée via GitHub.

---

