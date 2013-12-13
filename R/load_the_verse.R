#' @include hadleyverse.R
NULL

#' Load Hadleyverse packages
#' 
#' People in \code{userland} will load \code{ggplot2}, \code{reshape2},
#' \code{stringr} and \code{plyr}. People in dev (developer) land will get 
#' \code{devtools}, \code{testthat} and \code{roxygen2}. If a package is 
#' not installed, it will be installed from CRAN.
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
    packages <- user_land_packages
  else
    packages <- dev_land_packages
  for (package in packages) {
    if (!isTRUE(require(package, character.only=TRUE))) {
      install.packages(package)
      require (package, character.only=TRUE, ...)
    } else 
      require(package, character.only=TRUE, ...)
  }
}