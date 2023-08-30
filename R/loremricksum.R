#' Randomly Generate Rick & Morty Quotes
#'
#' Generates paragraphs of quotes from Rick and Morty. Note that the output may
#' contain obscenities.
#'
#' @param n_paras Integer. The number of paragraphs to generate. Defaults to 2.
#' @param n_sentences Integer. The number of sentences to generate per
#'   paragraph. Defaults to 4.
#'
#' @family whimsical generators
#' @source <http://loremricksum.com/>
#'
#' @export
loremricksum <- function(n_paras = 2L,
                         n_sentences = 4L) {
  url <-
    paste0(
      "http://loremricksum.com/api/?paragraphs=",
      as.integer(n_paras),
      "&quotes=",
      as.integer(n_sentences)
    )

  raw <- curl::curl_fetch_memory(url)
  json <- rawToChar(raw$content)
  parsed <- jsonlite::parse_json(json)

  paste(unlist(parsed$data), collapse = "\n\n")
}
