#' List all Futureverse dependencies
#'
#' @param recursive If \code{TRUE}, will also list all dependencies of
#'   tidyverse packages.
#'
#' @param repos The repositories to use to check for updates.
#'   Defaults to \code{getOption("repos")}.
#'
#' @return
#' A [base::data.frame] with columns `package`, `cran`, `local`, and `behind`.
#'
#' @importFrom tools package_dependencies
#' @importFrom utils available.packages
#' @export
futureverse_deps <- function(recursive = FALSE, repos = getOption("repos")) {
    pkgs <- available.packages(repos = repos)
    deps <- package_dependencies(.packageName, pkgs, recursive = recursive)
    pkg_deps <- unlist(deps)

    ## Fallback, until futureverse is on CRAN
    if (is.null(pkg_deps)) {
      pkg_deps <- futureverse_packages(include_self = FALSE)
    }

    pkg_deps <- unique(sort(pkg_deps))
    
    base_pkgs <- c("base", "compiler", "datasets", "graphics", 
        "grDevices", "grid", "methods", "parallel", "splines", 
        "stats", "stats4", "tools", "tcltk", "utils")
    pkg_deps <- setdiff(pkg_deps, base_pkgs)
    
    cran_version <- lapply(pkgs[pkg_deps, "Version"], FUN = package_version)
    local_version <- lapply(pkg_deps, FUN = packageVersion)
    behind <- mapply(cran_version, local_version, FUN = `>`)
    data.frame(
      package = pkg_deps,
         cran = vapply(cran_version, FUN = as.character, FUN.VALUE = NA_character_),
        local = vapply(local_version, FUN = as.character, FUN.VALUE = NA_character_),
       behind = behind
    )
}
