\name{addme}
\alias{addme}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Add together 2 numerics
}
\description{
This function allows the user to add together 2 numbers provided that they are both numerics
}
\usage{
addme(a, b)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a}{
A number
}
  \item{b}{
A number
}
}
\value{
Return the sum of the 2 numbers \code{x} and \code{y}
}
\details{
If \code{x} or \code{y} is not numeric, the function will not run and will return a warning message
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
amandiner
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
addme(1, 5)
addme(2, 20)
addme("a", 5) ## NOT WORKING
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
