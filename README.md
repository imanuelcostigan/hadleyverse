hadleyverse
===========

A package to load (or first install and then load) packages from the hadleyverse

## List of packages

Userland packages:

* ggplot2
* lubridate
* reshape2
* stringr
* plyr

Devland packages:

* devtools
* testthat
* roxygen2
* assertthat

## How to

```
load_the_hadley_verse() # defaults to userland
load_the_hadley_verse('devland')
```

## Possible future features

* Install the bleeding edge hadleyverse from GitHub
* Figure out inter-dependencies