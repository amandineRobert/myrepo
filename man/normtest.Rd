\name{normtest}
\alias{normtest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Create a matrix 1*1
}
\description{
It allows to create a matrix 1*1, so composed of a single word
}
\usage{
normtest(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A numeric/ complex matrix/ vector arguments
}
}
\details{
If the value choosen is not one the types previously quoted, an error message appears
}
\value{
The result is a matrix made of one single column and line too
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
normtest(5) #GOOD
normtest("a") #ERROR MESSAGE
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
