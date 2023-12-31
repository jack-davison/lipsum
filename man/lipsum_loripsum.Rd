% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lipsum_loripsum.R
\name{lipsum_loripsum}
\alias{lipsum_loripsum}
\title{Generate Lorem Ipsum using the Loripsum API}
\source{
\url{https://loripsum.net/}
}
\usage{
lipsum_loripsum(
  n = 5L,
  length = "short",
  decorate = FALSE,
  link = FALSE,
  ul = FALSE,
  ol = FALSE,
  dl = FALSE,
  bq = FALSE,
  code = FALSE,
  headers = FALSE,
  allcaps = FALSE,
  prude = FALSE,
  plaintext = FALSE
)
}
\arguments{
\item{n}{Integer. The number of paragraphs to generate. Defaults to 5.}

\item{length}{Character. The average length of a paragraph. Can be any of
"short", "medium", "long" or "verylong". Defaults to "short".}

\item{decorate}{Logical. If \code{TRUE}, bold, italic and marked text. Defaults to \code{FALSE}.}

\item{link}{Logical. If \code{TRUE}, adds links. Defaults to \code{FALSE}.}

\item{ul}{Logical. If \code{TRUE}, adds unordered lists. Defaults to \code{FALSE}.}

\item{ol}{Logical. If \code{TRUE}, adds numbered/ordered lists. Defaults to \code{FALSE}.}

\item{dl}{Logical. If \code{TRUE}, adds description lists. Defaults to \code{FALSE}.}

\item{bq}{Logical. If \code{TRUE}, adds blockquotes. Defaults to \code{FALSE}.}

\item{code}{Logical. If \code{TRUE}, adds code samples. Defaults to \code{FALSE}.}

\item{headers}{Logical. If \code{TRUE}, adds headers. Defaults to \code{FALSE}.}

\item{allcaps}{Logical. If \code{TRUE}, uses ALL CAPS. Defaults to \code{FALSE}.}

\item{prude}{Logical. If \code{TRUE}, removes Latin words which could be construed as offensive in English, like 'sex' or 'homo'. Defaults to \code{FALSE}.}

\item{plaintext}{Logical. If \code{TRUE}, returns plain text without HTML tags. Defaults to \code{FALSE}.}
}
\description{
Generates random, customisable placeholder text using the Loripsum Web
API.
}
\seealso{
Other practical generators: 
\code{\link{lipsum_corporate}()},
\code{\link{lipsum_markdown}()},
\code{\link{lipsum_seazon}()}
}
\concept{practical generators}
