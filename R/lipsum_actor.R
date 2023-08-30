#' Generate Paragraphs of Text impersonating famous actors
#'
#' Generates random text impersonating famous actors, like Daisy Ridley and
#' Morgan Freeman.
#'
#' @param n Integer. The number of paragraphs to generate. Defaults to 5.
#' @param paragraphs `r loripsum_arg("shows paragraph tags in the output", "TRUE")`
#'
#' @family whimsical generators
#' @source <https://devlorem.kovah.de/>
#'
#' @export
lipsum_actor <- function(n = 5L, paragraphs = TRUE) {
  x <- ifelse(paragraphs, "true", "false")
  url <-
    paste0("devlorem.kovah.de/api/", as.integer(n), "?format=text&paragraphs=", x)
  raw <- curl::curl_fetch_memory(url)
  out <- rawToChar(raw$content)
  gsub("\n", "\n\n", out)
}
