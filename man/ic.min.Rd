\name{ic.min}
\Rdversion{1.1}
\alias{ic.min}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
AIC, corrected AIC and BIC for all-subsets linear regression}
\description{
Given an outcome vector and model matrix, this function finds the submodel(s) minimizing the Akaike (1973, 1974) information criterion (AIC), a corrected version thereof (Sugiura, 1978; Hurvich and Tsai, 1989), and the 
Bayesian information criterion (BIC; Schwarz, 1978).}
\usage{
ic.min(y, X, pvec = 1:(ncol(X) + 1))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
outcome vector}
  \item{X}{
model matrix.  This should not include an intercept column; such a column is added by the function.}
  \item{pvec}{
vector of possible dimensions of the model to consider: by default, ranges from 1 (intercept only) to \code{ncol(X) + 1} (full model).}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A list with components
  \item{nlogsig2hat}{value of the first (non-penalty) term of the criterion, i.e., sample size times log of MLE of the variance, for best model of each dimension in \code{pvec}.}
  \item{aic}{lowest AIC for models of each dimension.}
  \item{aicc}{lowest corrected AIC for models of each dimension.}
  \item{bic}{lowest BIC for models of each dimension.}
  \item{best.aic, best.aicc, best.bic}{vectors of logicals indicating which columns of the model matrix are included in the model minimizing AIC, corrected AIC, or BIC.}
}
\references{
Akaike, H. (1973).   Information theory and an extension of the maximum likelihood principle.  In \emph{Second International Symposium on Information Theory} (eds. B. N. Petrov and F. Csaki), pp. 267--281.  Budapest: Akademiai Kiado.
 
Akaike, H. (1974).  A new look at the statistical model identification.  \emph{IEEE Transactions on Automatic Control}, 19, 716--723.

Hurvich, C. M., and Tsai, C.-L. (1989).  Regression and time series model selection in small samples.  \emph{Biometrika}, 76, 297--307.

Schwarz, G. (1978).  Estimating the dimension of a model.  \emph{Annals of Statistics}, 6, 461--464.

Sugiura, N. (1978).  Further analysis of the data by Akaike's information criterion and the finite corrections.  \emph{Communications in Statistics: Theory & Methods}, 7, 13--26.
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
ic.min(swiss$Fertility, swiss[ , -1])
}
