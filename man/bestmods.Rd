\name{bestmods}
\Rdversion{1.1}
\alias{bestmods}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Find best submodels of a full linear model}
\description{
This function inputs a table of models produced by \code{\link{scoremods}}, picks out the best models according to a specified information criterion, and (optionally) generates a graphical representation of these models.}
\usage{
bestmods(tbl, ic = "AIC", nmods = 10, plot = TRUE, 
         labels = dimnames(tbl)[[2]][1:attr(tbl,"npred")], 
         cex.axis = 1, las = 2 - all(labels==1:attr(tbl,"npred")), 
         xlab = if (las==1) "Predictors" else "",  
         ylab = "Criterion value", main = ic, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tbl}{
a table of the kind outputted by \code{\link{scoremods}}.}
  \item{ic}{
the information criterion used to score the models.  By default, this is \code{"eic"}.  \code{"AIC"}, \code{"AICc"} and \code{"CVIC"} are also available.}
  \item{nmods}{
maximum number of lowest-scoring models to retain.}
  \item{plot}{
logical value indicating whether to plot the criterion values for the best models.}
  \item{labels}{
labels for the predictors, used along the horizontal axis of the plot.}
  \item{cex.axis, las, xlab, ylab, main}{
graphical parameters for the plot; see \code{\link{par}}.}
  \item{\dots}{
additional graphical parameters passed to \code{\link{plot}}.
}
}
\details{
Only models with criterion value equal to or less than that of the null (intercept-only) model are retained, even if there are fewer than \code{nmods} such models.  If the null model is among the best \code{nmods} models and 
\code{plot = TRUE}, the plot includes a dotted line representing the null model.

The defaults for \code{las} and \code{labels} are intended to 
make the horizontal axis look sensible, whether or not names for
the predictors are provided in \code{tbl}.  See the example below.}
\value{
A table consisting of the rows of \code{tbl} referring to the models with lowest value of criterion \code{ic}.}
\references{
}
\author{
Philip Reiss \email{phil.reiss@nyumc.org} and Lei Huang \email{huangracer@gmail.com}}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{scoremods}}
}
\examples{
data(swiss)
modtable = scoremods(swiss$Fertility, swiss[ , -1], nboot=100)

par(mfrow = 1:2)
bestmods(modtable)

# The predictor names may render the above table too wide to be 
# read easily.  To remove them, set names = 1:5 in the above call 
# to scoremods.  Alternatively, modify modtable as follows:
modtable.nonames = modtable
dimnames(modtable.nonames)[[2]][1:5] = 1:5
bestmods(modtable.nonames, main="Same, minus names")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
