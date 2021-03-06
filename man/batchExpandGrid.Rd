% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/batchExpandGrid.R
\name{batchExpandGrid}
\alias{batchExpandGrid}
\title{Map function over all combinations.}
\usage{
batchExpandGrid(reg, fun, ..., more.args = list())
}
\arguments{
\item{reg}{[\code{\link{Registry}}]\cr
Empty Registry that will store jobs for the mapping.}

\item{fun}{[\code{function}]\cr
Function to map over the combinations.}

\item{...}{[any]\cr
Vectors that are used to compute all combinations.
If the arguments are named, these names are used to bind to arguments of \code{fun}.}

\item{more.args}{[\code{list}]\cr
A list of other arguments passed to \code{fun}.
Default is empty list.}
}
\value{
[\code{data.frame}]. Expanded grid of combinations produced by \code{\link{expand.grid}}.
}
\description{
Maps an n-ary-function over a list of all combinations which are given by some vectors.
Internally \code{\link{expand.grid}} is used to compute the combinations, then
\code{\link{batchMap}} is called.
}
\examples{
reg = makeRegistry(id = "BatchJobsExample", file.dir = tempfile(), seed = 123)
f = function(x, y, z) x * y  + z
# lets store the param grid
grid = batchExpandGrid(reg, f, x = 1:2, y = 1:3, more.args = list(z = 10))
submitJobs(reg)
waitForJobs(reg)
y = reduceResultsVector(reg)
# later, we can always access the param grid like this
grid = getJobParamDf(reg)
cbind(grid, y = y)
}

