\name{scoremods}
\Rdversion{1.1}
\alias{scoremods}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Score best subsets by information criteria}
\description{
This function uses the \pkg{leaps} package to find the best 
models of each size, and scores each according to AIC, corrected AIC, BIC, EIC and CVIC.}
\usage{
scoremods(y, X, nboot, nfold=length(y), names=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
outcome vector}
  \item{X}{
model matrix.  This should not include an intercept column; such a column is added by the function.}
  \item{nboot}{
number of bootstrap samples or subsamples.
}
  \item{nfold}{
number of folds cross validation conduct.}
\item{names}{vector of names for the columns of \code{X}.  If \code{NULL}, \code{names(X)} is used.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A matrix.  The first \code{ncol(X)} columns, essentially the \code{which} component of an object outputted by \code{leaps}, identify which predictors are in each of the best models.  The remaining columns provide the AIC, corrected AIC, BIC, EIC, and CVIC for each model.  The matrix has an
attribute "\code{npred}" giving the number of candidate predictors, i.e.,
\code{ncol(X)}.}
\references{
Lumley, T., using Fortran code by A. Miller (2009).
  leaps: regression subset selection. R package version
  2.9. \url{http://CRAN.R-project.org/package=leaps}

Reiss, P. T., Huang, L., Cavanaugh, J. E., and Roy, A. K. (2012).  Resampling-based information criteria for adaptive linear model selection. 
\emph{Annals of the Institute of Statistical Mathematics}, to appear.  Available at \url{http://works.bepress.com/phil_reiss/17}
}
\author{
Philip Reiss \email{phil.reiss@nyumc.org} and Lei Huang \email{huangracer@gmail.com}}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{bestmods}}; \code{leaps} (in the package of the same name)}
\examples{
## see example for bestmods
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
