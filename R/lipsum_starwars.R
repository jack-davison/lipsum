#' Generate Paragraphs of Dialogue from Star Wars films
#'
#' Generates random snippets of dialogue from Star Wars films, or lists of
#' names/places from the Star Wars universe.
#'
#' @param n Integer. The number of paragraphs/names to generate. Defaults to 10.
#' @param content Character. Either `"episode-x"` (where `x` is 1-9),
#'   `"characters"` or `"places"`. Defaults to `"episode-4"`.
#'
#' @family whimsical generators
#' @source <https://forcemipsum.com/api>
#'
#' @export
lipsum_starwars <- function(n = 10L, content = "episode-4") {
  content <- match.arg(content,
                       choices = c(paste0("episode-", 1:9),
                                   "characters", "places"))

  url <- paste0("https://forcemipsum.com/api/", content, "/", n, "/")

  raw <- curl::curl_fetch_memory(url)
  char <- rawToChar(raw$content)
  char <- jsonlite::fromJSON(char)
  paste(char, collapse = "\n\n")
}



