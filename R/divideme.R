divideme <-
function(a, b){
  if (!is.numeric(a) | !is.numeric(b)) stop("YOU NEED NUMBERS")
  return(a/b)
}
