#' Obtain wise, pedantic metaphors using the Metaphorpsum API
#'
#' Generates place holder text of nonsensical metaphors.
#'
#' @param n_paras Integer. The number of paragraphs to generate. Defaults to 2.
#' @param n_sentences Integer. The number of sentences to generate per
#'   paragraph. Defaults to 4.
#' @param p `r loripsum_arg("wraps paragraphs in paragraph tags", "FALSE")`
#'
#' @family whimsical generators
#' @source <http://metaphorpsum.com/>
#'
#' @export
lipsum_metaphor <- function(n_paras = 2L,
                            n_sentences = 4L,
                            p = FALSE) {
  url <-
    paste0(
      "metaphorpsum.com/paragraphs/",
      as.integer(n_paras),
      "/",
      as.integer(n_sentences)
    )

  if (p) {
    url <- paste0(url, "?p=true")
  }

  raw <- curl::curl_fetch_memory(url)
  rawToChar(raw$content)
}
