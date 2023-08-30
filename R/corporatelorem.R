#' Generate Corporate-sounding placeholder text using the CorporateLorem API
#'
#' Generates random "corporate-style" placeholder text using the CorporateLorem
#' API. The text is English-language and is partially adapted from articles by
#' the NY Times, The Guardian and The Verge.
#'
#' @param n Integer. The number of paragraphs to generate. Defaults to 5.
#' @param paragraphs `r loripsum_arg("shows paragraph tags in the output", "TRUE")`
#' @param textformat `r loripsum_arg("returns a single text string. Otherwise returns a named list of source and paragraphs.", "TRUE")`
#'
#' @family practical generators
#' @source <https://corporatelorem.kovah.de/>
#'
#' @export
corporatelorem <- function(n = 5L, paragraphs = TRUE, textformat = TRUE) {
  url <-
    paste0(
      "corporatelorem.kovah.de/api/",
      as.integer(n), "?"
    )

  if (paragraphs) {
    url <- paste0(url, "paragraphs=true")
  }

  if (textformat) {
    url <- paste0(url, "&format=text")
  }

  raw <- httr::GET(url)

  if (!textformat) {
    jsonlite::parse_json(raw, simplifyVector = TRUE)
  } else {
    rawToChar(raw$content)
  }
}
