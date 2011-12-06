\name{xy}
\Rdversion{1.1}
\alias{xy}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Random generation of linear model matrix and outcomes}
\description{
This function can be used for simulations to evaluate the 
performance of linear model selection with independent 
predictors.}
\usage{
xy(n, p.all, p.true, R2, beta0 = 5, 
   yname = paste("y", p.true, sep = ""), 
   xname = paste("x", p.true, p.all, sep = ""))
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
  \item{beta0}{
true model intercept; in some contexts this value may be arbitrary.}
  \item{yname}{
name for the generated outcome vector.}
  \item{xname}{
name for the generated model matrix.}
}
\details{
\code{xy} simulates entries of a model matrix independently from the
standard normal distribution, then simulates outcomes whose mean is simply \code{beta0} plus the sum of the first 
\code{p.true - 1} predictors.  The errors are normal with mean 0 and
standard deviation chosen so as to attain the given \code{R2}; see Tibshirani & Knight (1999), p. 538.}
\value{
A list with components \code{X} (model matrix, without intercept column) and \code{y} (outcome vector).
}
\references{
Tibshirani, R., and Knight, K. (1999). The covariance inflation criterion for adaptive model selection.  \emph{Journal of the Royal Statistical Society, Series B}, 61, 529--546.}
\author{
Philip Reiss \email{phil.reiss@nyumc.org} and Lei Huang \email{huangracer@gmail.com}}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{}
\examples{
# Generate 40 vectors of 8 candidate predictors, of which 
# (the first) 2 have nonzero coefficients, along with 40 outcomes,
# with R^2=.8
tmp = xy(40, 9, 3, .8)

# As a side effect, the above created objects y5 and X59,
# equal to tmp$y and tmp$X respectively.
# The following lines can then be used to examine how different
# information criteria fare at identifying the true model as "best". 
ic.min(y3, x39)
eic(y3, x39, nboot=100)
cvic(y3, x39)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
