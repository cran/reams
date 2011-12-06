\name{eic}
\alias{eic}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Extended (bootstrap) information criterion
}
\description{
Model selection by an extended information criterion (EIC),
based on nonparametric bootstrapping, was introduced by Ishiguro et al. (1997).  This function implements the extension by Reiss et al. (2012) to adaptive linear model selection. 
}
\usage{
eic(y, X, nboot, pvec = 1:(ncol(X) + 1), say.which = FALSE, reuse = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
outcome vector}
  \item{X}{
model matrix.  This should not include an intercept column; such a column is added by the function.}
  \item{nboot}{
number of bootstrap samples.}
  \item{pvec}{
vector of possible dimensions of the model to consider: by default, ranges from 1 (intercept only) to \code{ncol(X) + 1} (full model).}
  \item{say.which}{
logical: should the predictors selected for each bootstrap sample be reported?}
  \item{reuse}{
logical: should the best full-data model of each size be reused in
calculating the overoptimism estimate, as opposed to reselecting the 
best model of each size for each training set?}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A list with components
  \item{nlogsig2hat}{value of the first (non-penalty) term of the criterion, i.e., sample size times log of MLE of the variance, for best model of each dimension in \code{pvec}.}
\item{penalty}{the second (penalty) term of the criterion.}
\item{eic}{the EIC, i.e., the sum of the previous two components.}
\item{best}{a vector of logicals indicating which columns of the model matrix are included in the EIC-minimizing model.}
}
\references{
Ishiguro, M., Sakamoto, Y., and Kitagawa, G. (1997).  Bootstrapping log likelihood and EIC, an extension of AIC.  \emph{Annals of the Institute of Statistical Mathematics}, 49, 411--434.

Reiss, P. T., Huang, L., Cavanaugh, J. E., and Roy, A. K. (2012).  Resampling-based information criteria for adaptive linear model selection. 
\emph{Annals of the Institute of Statistical Mathematics}, to appear.  Available at \url{http://works.bepress.com/phil_reiss/17}
}
\author{
Philip Reiss \email{phil.reiss@nyumc.org} and Lei Huang \email{huangracer@gmail.com}
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# Predicting fertility from provincial socioeconomic indicators
data(swiss)
eicobj <- eic(swiss$Fertility, swiss[ , -1], nboot=100)
eicobj$best
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
