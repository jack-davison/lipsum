#' Generate Lorem Ipsum using the Seazon.org API
#'
#' Generates random, customisable placeholder text using the Seazon API.
#'
#' @param latin `r loripsum_arg("generates Latin text. Otherwise generates random text", "TRUE")`
#' @param start_with_lorem `r loripsum_arg("begins the text with 'Lorem Ipsum'", "TRUE")`
#' @param use_periods `r loripsum_arg("uses periods", "TRUE")`
#' @param use_sentence_case `r loripsum_arg("begins each sentence with an upper case character", "TRUE")`
#' @param p `r loripsum_arg("wraps text in paragraph tags", "TRUE")`
#' @param use_double_spaces `r loripsum_arg("puts double spaces after each sentence", "FALSE")`
#' @param random_numbers `r loripsum_arg("adds random numbers if 'latin = FALSE'", "TRUE")`
#' @param random_latin `r loripsum_arg("makes the random text latin-like if 'latin = FALSE'", "TRUE")`
#' @param min_letters,max_letters Minimum/maximum numbers of letters in each word, when 'latin = FALSE'.
#' @param min_words,max_words Minimum/maximum paragraph word count.
#' @param min_paras,max_paras Minimum/maximum number of paragraphs.#'
#'
#' @family practical generators
#' @source <http://www.seazon.org/>
#' @order 3
#'
#' @export
seazon <- function(latin = TRUE,
                         start_with_lorem = TRUE,
                         use_periods = TRUE,
                         use_sentence_case = TRUE,
                         p = TRUE,
                         use_double_spaces = FALSE,
                         random_numbers = FALSE,
                         random_latin = TRUE,
                         min_letters = 2L,
                         max_letters = 9L,
                         min_words = 45L,
                         max_words = 85L,
                         min_paras = 3L,
                         max_paras = 4L

){
  first <-
    paste0(
      c(as.integer(latin),
        as.integer(start_with_lorem),
        as.integer(use_periods),
        as.integer(use_sentence_case),
        as.integer(p),
        as.integer(use_double_spaces)),
      collapse = "-"
    )

  second <-
    paste0(c(as.integer(random_numbers),
             "0",
             as.integer(random_latin)),
           collapse = "-")

  third <-
    paste0(c(as.integer(min_letters),
             as.integer(max_letters),
             as.integer(min_words),
             as.integer(max_words),
             as.integer(min_paras),
             as.integer(max_paras)),
           collapse = "-")

  url <- paste0(c("http://api.seazon.org",
                  first, second, third,
                  "api.txt"),
                collapse = "/")

  raw <- curl::curl_fetch_memory(url)
  rawToChar(raw$content)
}
