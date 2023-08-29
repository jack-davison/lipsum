#' Generate Lorem Ipsum using the Loripsum API
#'
#' Generates random, customisable placeholder text using the Loripsum Web
#' API.
#'
#' @param n Integer. The number of paragraphs to generate. Defaults to 5.
#' @param length Character. The average length of a paragraph. Can be any of
#' "short", "medium", "long" or "verylong". Defaults to "short".
#' @param decorate `r loripsum_arg("bold, italic and marked text")`
#' @param link `r loripsum_arg("adds links")`
#' @param ul `r loripsum_arg("adds unordered lists")`
#' @param ol `r loripsum_arg("adds numbered/ordered lists")`
#' @param dl `r loripsum_arg("adds description lists")`
#' @param bq `r loripsum_arg("adds blockquotes")`
#' @param code `r loripsum_arg("adds code samples")`
#' @param headers `r loripsum_arg("adds headers")`
#' @param allcaps `r loripsum_arg("uses ALL CAPS")`
#' @param prude `r loripsum_arg("removes Latin words which could be construed as offensive in English, like 'sex' or 'homo'")`
#' @param plaintext `r loripsum_arg("returns plain text without HTML tags")`
#'
#' @family practical generators
#' @source <https://loripsum.net/>
#'
#' @export
loripsum <-
  function(n = 5L,
           length = "short",
           decorate = FALSE,
           link = FALSE,
           ul = FALSE,
           ol = FALSE,
           dl = FALSE,
           bq = FALSE,
           code = FALSE,
           headers = FALSE,
           allcaps = FALSE,
           prude = FALSE,
           plaintext = FALSE) {
    length <- match.arg(length, c("short", "medium", "long", "verylong"))

    args <- as.list(environment())
    args <- args[-(1:2)]
    args <- args[unlist(args)]

    url <- paste0("https://loripsum.net/api/", as.integer(n), "/", length, "/")

    for (i in names(args)) {
      url <- paste0(url, i, "/")
    }

    raw <- httr::GET(url = url)
    rawToChar(raw$content)
  }

#' Function to construct param definition for the loripsum function
#' @noRd
loripsum_arg <- function(text, default = "FALSE") {
  paste0("Logical. If `TRUE`, ", text, ". Defaults to `", default, "`.")
}
