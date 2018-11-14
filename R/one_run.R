#' one_run
#'
#' @param inputfile
#'
#' @export
one_run <- function(inputfile = "iceplaice.dat.prog") {
  system(paste0("./muppet -ind ", inputfile, " -mceval"))
}
