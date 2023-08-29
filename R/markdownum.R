#' Generate markdown-formatted Lorem Ipsum using the Lorem Markdownum API
#'
#' Generates customisable placeholder text using the Lorem Markdownum API, formatted for markdown.
#'
#' @param n Integer. The number of "blocks" to generate. Defaults to 5.
#' @param no_headers `r loripsum_arg("removes headers")`
#' @param no_code `r loripsum_arg("removes code snippets")`
#' @param no_inline_markup `r loripsum_arg("removes inline markup")`
#' @param no_quotes `r loripsum_arg("removes blockquotes")`
#' @param no_lists `r loripsum_arg("removes lists")`
#' @param no_external_links `r loripsum_arg("replaces external links with internal links")`
#' @param no_wrapping `r loripsum_arg("prevents text wrapping")`
#' @param underline_headers `r loripsum_arg("headers are underlined")`
#' @param reference_links `r loripsum_arg("uses reference-style links")`
#' @param underscore_em `r loripsum_arg("styles <em> using underscores")`
#' @param underscore_strong `r loripsum_arg("styles <strong> using double underscores")`
#' @param fenced_code_blocks `r loripsum_arg("fences code blocks with back-ticks")`
#'
#' @family practical generators
#' @source <https://jaspervdj.be/lorem-markdownum/>
#'
#' @export
markdownum <- function(n = 5L,
                       no_headers = FALSE,
                       no_code = FALSE,
                       no_inline_markup = FALSE,
                       no_quotes = FALSE,
                       no_lists = FALSE,
                       no_external_links = FALSE,
                       no_wrapping = FALSE,
                       underline_headers = FALSE,
                       reference_links = FALSE,
                       underscore_em = FALSE,
                       underscore_strong = FALSE,
                       fenced_code_blocks = FALSE) {
  args <- as.list(environment())
  args <- args[-1]
  args <- args[unlist(args)]
  args <- gsub("_", "-", names(args))

  url <-
    paste0(
      "https://jaspervdj.be/lorem-markdownum/markdown.txt?num-blocks=",
      as.integer(n),
      "&"
    )

  for (i in args) {
    url <- paste0(url, i, "=on&")
  }

  raw <- httr::GET(url)

  rawToChar(raw$content)
}
