#' Obtain a random passage from copyright-free literature using the Lit Ipsum
#' API
#'
#' Choose passages from copyright-free literature courtesy of the [Gutenberg
#' Project](http://www.gutenberg.org/).
#'
#' @param n Integer, optional. The number of paragraphs to generate. The
#'   default, `NULL`, generates one "page" of text from the `source`.
#' @param tag Character, optional. One of "p" or "li", which renders the
#'   paragraphs with p or li tags, respectively.
#' @param source Character, optional. The book from which to take the
#'   placeholder text. One of `r paste(books, collapse = ", ")`. The default,
#'   `NULL`, chooses one at random.
#'
#' @family whimsical generators
#' @source <https://litipsum.com/>
#'
#' @export
litipsum <- function(n = NULL,
                     tag = NULL,
                     source = NULL) {
  url <- "https://litipsum.com/api/"

  if (!is.null(source)) {
    source <-
      match.arg(
        source,
        books
      )
    url <- paste0(url, source, "/")
  }

  if (!is.null(n)) {
    url <- paste0(url, n, "/")
  }

  if (!is.null(tag)) {
    tag <-
      match.arg(tag, c("p", "li"))
    url <- paste0(url, tag, "/")
  }

  raw <- httr::GET(url)
  rawToChar(raw$content)
}

books <-
  c(
    "adventures-sherlock-holmes",
    "dr-jekyll-and-mr-hyde",
    "dracula",
    "evelina",
    "life-of-samuel-johnson",
    "picture-of-dorian-gray",
    "pride-and-prejudice"
  )
