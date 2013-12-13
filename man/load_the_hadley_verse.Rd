\name{load_the_hadley_verse}
\alias{load_the_hadley_verse}
\title{Load Hadleyverse packages}
\usage{
load_the_hadley_verse(which = "userland", ...)
}
\arguments{
  \item{...}{additional arguments passed to
  \code{\link{require}}}
}
\description{
People in \code{userland} will load \code{ggplot2},
\code{reshape2}, \code{stringr} and \code{plyr}. People in
dev (developer) land will get \code{devtools},
\code{testthat} and \code{roxygen2}. If a package is not
installed, it will be installed from CRAN.
}
