#' @docType methods
#' @rdname cal_min-methods
#' @title Extract Image cal.min attribute 
#' @name cal.min-methods
#' @aliases cal.min,character-method
#' @import oro.nifti
#' @export
#' @description cal_min method for character types
#' @param object is a filename to pass to \link{fslval}
#' 
setMethod("cal.min", "character", function(object) { 
  object = path.expand(object)
  stopifnot(file.exists(object))
  res = fslval(object, keyword = "cal_min", verbose = FALSE)
  res = as.numeric(res)
  return(res)
})
