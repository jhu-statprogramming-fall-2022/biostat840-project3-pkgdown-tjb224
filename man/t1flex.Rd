% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/table1.R
\name{t1flex}
\alias{t1flex}
\title{Convert a \code{table1} object to \code{flextable}.}
\usage{
t1flex(x, tablefn = c("qflextable", "flextable", "regulartable"), ...)
}
\arguments{
\item{x}{An object returned by \code{\link{table1}}.}

\item{tablefn}{Choose a function from the \code{flextable} package to use as
the basis for the table.}

\item{...}{Further options passed to \code{tablefn}.}
}
\value{
A \code{flextable} object.
}
\description{
Convert a \code{table1} object to \code{flextable}.
}
\note{
The \code{flextable} package needs to be installed for this to work.
}
