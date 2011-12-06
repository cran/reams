\name{cic}
\Rdversion{1.1}
\alias{cic}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Covariance inflation criterion}
\description{
Computes the covariance inflation criterion (CIC) of Tibshirani and Knight (1999) for submodels of a full linear model.}
\usage{
cic(y, X, nperms = 499, covests = NULL, nullcic = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
outcome vector}
  \item{X}{
model matrix.  This should not include an intercept column; such a column is added by the function.}
  \item{nperms}{
number of permuted data sets to generate.}
  \item{covests}{
sum of the null-hypothesis covariances between the outcomes and the fitted values for the best linear model of each size.  If \code{NULL}, covariance is estimated from permuted data.}
  \item{nullcic}{CIC for the intercept-only model.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A list with components
 \item{leaps}{all-subsets regression object (for the unpermuted data) returned by function \code{leaps} in package \code{leaps}.}
 \item{covests}{sum of the (estimated) null-hypothesis covariances between the outcomes and the fitted values for the best linear model of each size.}
 \item{enp}{effective number of parameters for models of each size, as defined by Tibshirani and Knight (1999).}
 \item{cic}{CIC for each of the models given in the \code{leaps} component.}
 \item{nullcic}{CIC for the intercept-only model.}
 \item{best}{vector of logicals indicating which predictors are included in the minimum-CIC model.}
}
\references{
Tibshirani, R., and Knight, K. (1999). The covariance inflation criterion for adaptive model selection.  \emph{Journal of the Royal Statistical Society, Series B}, 61, 529--546.}
\author{
Philip Reiss \email{phil.reiss@nyumc.org} and Lei Huang \email{huangracer@gmail.com}}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{leaps} (in the package of the same name)}
\examples{
data(swiss)
cicobj = cic(swiss$Fertility, swiss[ , -1])
cicobj$best
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
