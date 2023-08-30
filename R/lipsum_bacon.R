#' Obtain meaty placeholder text using the Bacon Ipsum API
#'
#' Generates placeholder text that, on first glance, looks like a regular Lorem
#' Ipsum, but is actually meat-related words.
#'
#' @param n_paras Integer. The number of paragraphs to generate. Defaults to 5.
#' @param n_sentences Integer, optional. The number of sentences to generate.
#'   Overrides `n_paras`.
#' @param type Character. One of "all-meat" for meat words only, or
#'   "meat-and-filler" for meat mixed with random lorem ipsum words. Defaults to
#'   "all-meat".
#' @param start_with_lorem `r loripsum_arg("starts the first paragraph with 'Bacon ipsum dolor sit amet'", "TRUE")`
#'
#' @family whimsical generators
#' @source <https://baconipsum.com/>
#'
#' @export
lipsum_bacon <- function(n_paras = 5L,
                       n_sentences = NULL,
                       type = c("all-meat", "meat-and-filler"),
                       start_with_lorem = TRUE) {
  type <- match.arg(type, choices = c("all-meat", "meat-and-filler"))

  url <-
    paste0(
      "https://baconipsum.com/api/?type=",
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

  raw <- curl::curl_fetch_memory(url)
  rawToChar(raw$content)
}
