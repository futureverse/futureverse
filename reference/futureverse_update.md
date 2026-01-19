# Update Futureverse packages

This will check to see if all Futureverse packages (and optionally,
their dependencies) are up-to-date, and will install after an
interactive confirmation.

## Usage

``` r
futureverse_update(recursive = FALSE, repos = getOption("repos"))
```

## Arguments

- recursive:

  If `TRUE`, will also list all dependencies of Futureverse packages.

- repos:

  The repositories to use to check for updates. Defaults to
  `getOption("repos")`.

## Value

Returns nothing; outputs installation instructions, if needed.

## Examples

``` r
if (FALSE) { # \dontrun{
futureverse_update()
} # }
```
