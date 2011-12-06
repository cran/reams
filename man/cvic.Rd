\name{cvic}
\alias{cvic}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Cross-validation information criterion
}
\description{
A model selection criterion proposed by Reiss et al. (2012), which employs cross-validation to estimate the overoptimism associated with the best candidate model of each size.  
}
\usage{
cvic(y, X, nfold = length(y), pvec = 1:(ncol(X) + 1))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
outcome vector}
  \item{X}{
model matrix.  This should not include an intercept column; such a column is added by the function.}
  \item{nfold}{
number of "folds" (validation sets).  The sample size must be divisible
by this number.
}
  \item{pvec}{
vector of possible dimensions of the model to consider: by default, ranges from 1 (intercept only) to \code{ncol(X) + 1} (full model).}
}

\details{
CVIC is similar to corrected AIC (Sugiura, 1978; Hurvich and Tsai, 1989), but instead of the nominal model dimension, it substitutes a measure of effective degrees of freedom (edf) that takes best-subset selection into account.  The "raw" edf is obtained by cross-validation.  Alternatively, one can refine the edf via constrained monotone smoothing, as described by Reiss et al. (2011).}
\value{
A list with components
  \item{nlogsig2hat}{value of the first (non-penalty) term of the criterion, i.e., sample size times log of MLE of the variance, for best model of each dimension in \code{pvec}.}
\item{cv.pen}{cross-validation penalty, as described by Reiss et al. (2011).}
\item{edf, edf.mon}{effective degrees of freedom, before and after constrained monotone smoothing.}
\item{cvic}{CVIC based on the raw edf.}
\item{cvic.mon}{CVIC based on edf to which constrained monotone smoothing has been applied.}
\item{best, best.mon}{vectors of logicals indicating which columns of the model matrix are included in the CVIC-minimizing model, without and with constrained monotone smoothing.}
}
\references{
Hurvich, C. M., and Tsai, C.-L. (1989).  Regression and time series model selection in small samples.  \emph{Biometrika}, 76, 297--307.

Reiss, P. T., Huang, L., Cavanaugh, J. E., and Roy, A. K. (2012).  Resampling-based information criteria for adaptive linear model selection. 
\emph{Annals of the Institute of Statistical Mathematics}, to appear.  Available at \url{http://works.bepress.com/phil_reiss/17}

Sugiura, N. (1978).  Further analysis of the data by Akaike's information criterion and the finite corrections.  \emph{Communications in Statistics: Theory & Methods}, 7, 13--26.
}
\author{
Lei Huang \email{huangracer@gmail.com} and Philip Reiss \email{phil.reiss@nyumc.org}
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[leaps]{leaps}} in package \pkg{leaps} for best-subset selection; \code{\link[mgcv]{pcls}} in package \pkg{mgcv} for the constrained monotone smoothing.
}
\examples{
# Predicting fertility from provincial socioeconomic indicators
data(swiss)
cvicobj <- cvic(swiss$Fertility, swiss[ , -1])
cvicobj$best
cvicobj$best.mon
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
