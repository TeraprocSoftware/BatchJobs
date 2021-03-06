% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/Exports.R
\name{loadExports}
\alias{loadExports}
\title{Load exported R data objects.}
\usage{
loadExports(reg, what = NULL)
}
\arguments{
\item{reg}{[\code{Registry}]\cr
Registry.}

\item{what}{[\code{character}]\cr
Names of objects and corresponding \dQuote{RData} files which should be loaded.
Default \code{NULL} loads all files.}
}
\value{
[\code{character}]. Invisibly returns a character vector of loaded objects.
}
\description{
Loads exported \code{RData} object files in the \dQuote{exports} subdirectory of your \code{file.dir}
and assigns the objects to the global environment.
}
\seealso{
Other exports: \code{\link{addRegistryPackages}};
  \code{\link{addRegistrySourceDirs}};
  \code{\link{addRegistrySourceFiles}};
  \code{\link{batchExport}}; \code{\link{batchUnexport}};
  \code{\link{removeRegistryPackages}};
  \code{\link{removeRegistrySourceDirs}};
  \code{\link{removeRegistrySourceFiles}}
}

