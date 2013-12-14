\name{load_the_hadley_verse}
\alias{load_the_hadley_verse}
\title{Load Hadleyverse packages}
\usage{
load_the_hadley_verse(which = "userland", ...)
}
\arguments{
  \item{...}{additional arguments passed to
  \code{\link{require}}}

  \item{which}{\code{userland} (default) will load (and if
  necessary, first install) \code{userland} packages while
  \code{devland} will load (and if necessary, first
  install) \code{devland} packages.}
}
\description{
People in \code{userland} will load \code{ggplot2},
\code{reshape2}, \code{stringr}, \code{plyr} and
\code{lubridate}. People in dev (developer) land will get
\code{devtools}, \code{roxygen2}, \code{testthat} and
\code{assertthat}. If a package is not installed, it will
be installed from CRAN.
}

