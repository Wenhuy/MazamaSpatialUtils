% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MazamaSpatialUtils.R
\name{codeToState}
\alias{codeToState}
\title{Convert State Codes to State Names}
\usage{
codeToState(stateCodes, countryCodes = NULL, dataset = "NaturalEarthAdm1")
}
\arguments{
\item{stateCodes}{vector of state codes to be converted}

\item{countryCodes}{ISO-3166-1 alpha-2 country codes the state might be found in}

\item{dataset}{name of dataset containing state-level identifiers}
}
\value{
A vector of English state names or NA.
}
\description{
Converts a vector of ISO 3166-2 alpha-2 state codes to the corresponding English names.
}
\details{
For this function to work, you must first run \code{initializeSpatialData()} to
download, convert and install the necessary spatial data.
}
\seealso{
convertNaturalEarthAdm1
}
\keyword{conversion}

