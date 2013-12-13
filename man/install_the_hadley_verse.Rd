\name{install_the_hadley_verse}
\alias{install_the_hadley_verse}
\title{Install Hadleyverse packages}
\usage{
install_the_hadley_verse(which = "userland")
}
\arguments{
  \item{which}{which set of packages to install. Defaults
  to \code{userland}. Any other value will install
  \code{devland} packages.}

  \item{...}{additional parameters passed to
  \code{\link{install.packages}}}
}
\description{
People in \code{userland} will install \code{ggplot2},
\code{reshape2}, \code{stringr} and \code{plyr}. People in
dev (developer) land will get \code{devtools},
\code{testthat} and \code{roxygen2}.
}

