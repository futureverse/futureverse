#' Update Futureverse packages
#'
#' This will check to see if all Futureverse packages (and optionally, their
#' dependencies) are up-to-date, and will install after an interactive
#' confirmation.
#'
#' @inheritParams futureverse_deps
#'
#' @examples
#' \dontrun{
#' futureverse_update()
#' }
#'
#' @export
futureverse_update <- function(recursive = FALSE, repos = getOption("repos")) {
  deps <- futureverse_deps(recursive, repos = repos)
  behind <- deps[deps$behind, ]

  if (nrow(behind) == 0) {
    message("All futureverse packages up-to-date")
    return(invisible())
  }

  message(paste0(
    sprintf("The following %s are out of date:\n", nrow(behind)),
    "\n",
    sprintf(" * %s (%s -> %s)\n", format(behind$package), behind$local, behind$cran),
    "\n",
    "Start a clean R session then run:\n",
    "\n",
    sprintf("install.packages(\"%s\")\n", behind$package)
  ))

  invisible()
}
