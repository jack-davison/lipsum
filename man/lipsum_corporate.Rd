% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lipsum_corporate.R
\name{lipsum_corporate}
\alias{lipsum_corporate}
\title{Generate Corporate-sounding placeholder text using the CorporateLorem API}
\source{
\url{https://corporatelorem.kovah.de/}
}
\usage{
lipsum_corporate(n = 5L, p = TRUE)
}
\arguments{
\item{n}{Integer. The number of paragraphs to generate. Defaults to 5.}

\item{p}{Logical. If \code{TRUE}, shows paragraph tags in the output. Defaults to \code{TRUE}.}
}
\description{
Generates random "corporate-style" placeholder text using the CorporateLorem
API. The text is English-language and is partially adapted from articles by
the NY Times, The Guardian and The Verge.
}
\seealso{
Other practical generators: 
\code{\link{lipsum_loripsum}()},
\code{\link{lipsum_markdown}()},
\code{\link{lipsum_seazon}()}
}
\concept{practical generators}
