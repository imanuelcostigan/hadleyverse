#' Load Hadleyverse packages
#' 
#' People in \code{userland} will load \code{ggplot2}, \code{reshape2},
#' \code{stringr}, \code{plyr} and \code{lubridate}. People in dev (developer) 
#' land will get \code{devtools}, \code{roxygen2}, \code{testthat} and
#' \code{assertthat}. If a package is not installed, it will be installed from 
#' CRAN.
#' 
#' @param ... additional arguments passed to \code{\link{require}}
#' @param which \code{userland} (default) will load (and if necessary, first 
#' install) \code{userland} packages while \code{devland} will load (and 
#' if necessary, first install) \code{devland} packages.
#' @export 

load_the_hadley_verse <- function (which = 'userland', ...)
{
  stopifnot(which %in% c('userland', 'devland'))
  if (identical(which, 'userland')) 
    packages <- c('ggplot2', 'reshape2', 'stringr', 'plyr', 'lubridate')
  else
    packages <- c('devtools', 'testthat', 'roxygen2', 'assertthat')
  for (package in packages) {
    if (!isTRUE(require(package, character.only=TRUE))) {
      install.packages(package)
      require (package, character.only=TRUE, ...)
    } else 
      require(package, character.only=TRUE, ...)
  }
}