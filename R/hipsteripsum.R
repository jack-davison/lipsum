#' Obtain hipster placeholder text using the Hipster Ipsum API
#'
#' Generates pretentious placeholder text. You wouldn't understand, man!
#'
#' @param n_paras Integer. The number of paragraphs to generate. Defaults to 5.
#' @param n_sentences Integer, optional. The number of sentences to generate.
#'   Overrides `n_paras`.
#' @param type Character. One of "hipster-centric" for hipster words only, or
#'   "hipster-latin" for hipster mixed with random lorem ipsum words. Defaults to
#'   "hipster-centric".
#' @param start_with_lorem `r loripsum_arg("starts the first paragraph with 'I'm baby'", "TRUE")`
#'
#' @family whimsical generators
#' @source <https://hipsum.co/>
#'
#' @export
hipsteripsum <- function(n_paras = 5L,
                         n_sentences = NULL,
                         type = c("hipster-centric", "hipster-latin"),
                         start_with_lorem = TRUE) {
  type <-
    match.arg(type, choices = c("hipster-centric", "hipster-latin"))

  url <-
    paste0(
      "http://hipsum.co/api/?type=",
      type,
      "&start-with-lorem=",
      as.numeric(start_with_lorem),
      "&format=text&"
    )

  if (is.null(n_sentences)) {
    url <- paste0(url, "paras=", as.integer(n_paras))
  } else {
    url <- paste0(url, "sentences=", as.integer(n_sentences))
  }

  raw <- httr::GET(url)
  rawToChar(raw$content)
}
