myplot <-
function(x, y) {
  if(missing(y)) {
    y <- x
    x <- 1:length(y)
  }
  plot(x, y)
}

myggplot <- function(x, y) {
  if(is.atomic(x) & is.atomic(y)){
    #if(x > 0 & y > 0){
      plot(x, y)
    #}
  }
}
