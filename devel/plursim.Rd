\name{plursim}
\Rdversion{1.1}
\alias{plursim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Perform a pluralistic model selection simulation study}
\description{
This function can be used to evaluate model selection performance of AIC,
corrected AIC, and resampling-based information criteria.  
Model selection "success", in the pluralistic sense, is evaluated for each criterion, in each of a set of simulations.}
\usage{
plursim(n, p.all, p.true, R2, nboot, nsim, resample = "subsampling", nmods = 7)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
sample size.}
  \item{p.all}{
maximum model dimension, i.e., number of candidate predictors plus 1.}
  \item{p.true}{
true model dimension, i.e., number of predictors with nonzero coefficients plus 1.}
  \item{R2}{
    coefficient of determination for the true model.
}
  \item{nboot}{
number of bootstrap samples or subsamples (within each simulation) for the resampling-based information criterion.}
  \item{nsim}{
number of simulations.}
  \item{resample}{
resampling method: \code{"bootstrap"}, \code{"subsampling"}, or an abbreviation of one of these.}
  \item{nmods}{
number of "best" models retained as viable models.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A list with components
\code{AIC}, \code{AICc}, \code{resampIC}, each of which is a table indicating the success rate for the given information criterion in the simulations.
}
\references{
}
\author{
??}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{models}
\keyword{regression}% __ONLY ONE__ keyword per line
