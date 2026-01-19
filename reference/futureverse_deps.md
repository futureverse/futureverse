# List all Futureverse dependencies

List all Futureverse dependencies

## Usage

``` r
futureverse_deps(recursive = FALSE, repos = getOption("repos"))
```

## Arguments

- recursive:

  If `TRUE`, will also list all dependencies of Futureverse packages.

- repos:

  The repositories to use to check for updates. Defaults to
  `getOption("repos")`.

## Value

A [base::data.frame](https://rdrr.io/r/base/data.frame.html) with
columns `package`, `cran`, `local`, and `behind`.
