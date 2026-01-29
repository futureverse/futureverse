#' @keywords internal
"_PACKAGE"

# Suppress R CMD check note
# Namespace in Imports field not imported from: PKG
#   All declared Imports should be used.
ignore_unused_imports <- function() {
  future::future
  futurize::futurize
  future.apply::future_apply
  furrr::future_map
  doFuture::registerDoFuture
  progressr::progressor
}
