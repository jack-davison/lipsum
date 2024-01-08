#' Randomly Generate Dinosaur Names using the Dinoipsum API
#'
#' Generates paragraphs of dinosaur names using the
#'
#' @param n_paras Integer. The number of paragraphs to generate. Defaults to 10.
#' @param n_words Integer. The number of words to generate per paragraph.
#'   Defaults to 30.
#'
#' @family whimsical generators
#' @source <https://dinoipsum.com/>
#'
#' @export
lipsum_dino <- function(n_paras = 10L,
                        n_words = 30L) {
  url <-
    paste0(
      "https://dinoipsum.com/api/?format=text&paragraphs=",
      as.integer(n_paras),
      "&words=",
      as.integer(n_words)
    )

  raw <- curl::curl_fetch_memory(url)
  rawToChar(raw$content)
}
