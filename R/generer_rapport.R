#' @title Générer un rapport
#' @description Génère un rapport pour une commune et un département donnés
#' @param commune Nom de la commune
#' @param departement Nom du département
#' @param output Chemin du fichier de sortie
#' @return Un fichier PDF ou HTML du rapport
#' @export
generer_rapport <- function(commune, departement, output) {
  # Localisation du fichier modèle
  template_path <- system.file("semaine5.qmd", package = "gitspero")

  # Vérifier si le fichier existe
  if (template_path == "") {
    stop("Le fichier modèle rapport.qmd est introuvable.")
  }

  data_commune <- read.csv("C:/Users/DELL/Downloads/cours_r_semaine_3/data/elus-conseillers-municipaux-cm.csv")

  # Modifier le fichier avec les paramètres donnés
  params <- list(
    commune = Libellé.de.la.commune ,
    departement = Libellé.du.département
  )

  # Génération du rapport avec Quarto
  quarto::quarto_render(
    input = template_path,
    output_file = output,
    execute_params = params
  )

  message("Rapport généré avec succès : ", output)
}
