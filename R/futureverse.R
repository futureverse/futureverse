#' @keywords internal
"_PACKAGE"

# Suppress R CMD check note
# Namespace in Imports field not imported from: PKG
#   All declared Imports should be used.
ignore_unused_imports <- function() {
  doFuture::registerDoFuture
  furrr::future_map
  future::future
  future.apply::future_apply
  progressr::progressor
}
