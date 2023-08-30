#' Generate Corporate-sounding placeholder text using the CorporateLorem API
#'
#' Generates random "corporate-style" placeholder text using the CorporateLorem
#' API. The text is English-language and is partially adapted from articles by
#' the NY Times, The Guardian and The Verge.
#'
#' @param n Integer. The number of paragraphs to generate. Defaults to 5.
#' @param p `r loripsum_arg("shows paragraph tags in the output", "TRUE")`
#'
#' @family practical generators
#' @source <https://corporatelorem.kovah.de/>
#'
#' @export
lipsum_corporate <- function(n = 5L, p = TRUE) {
  url <-
    paste0(
      "corporatelorem.kovah.de/api/",
      as.integer(n), "?"
    )

  if (p) {
    url <- paste0(url, "paragraphs=true")
  }

  url <- paste0(url, "&format=text")

  raw <- curl::curl_fetch_memory(url)
  rawToChar(raw$content)
}
