% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MazamaSpatialUtils.R
\name{initializeSpatialData}
\alias{initializeSpatialData}
\title{Install Core Datasets}
\usage{
initializeSpatialData()
}
\value{
Nothing.
}
\description{
Four core datasets can be installed to enhance the base the functionality
in \pkg{MazamaSpatialUtils}. Running \code{initializeSpatialData()} will
install these datasets in the the directory specified by \code{setSpatialDataDir()}.

The core datastes are:
\itemize{
\item{\code{TMWorldBorders} -- high resolution country polygons (higher resolution than \code{SimpleCountries})}
\item{\code{NaturalEarthAdm1} -- state/province polygons throughout the world}
\item{\code{USCensusCounties} -- county polygons in the United States}
\item{\code{WorldTimezones} -- high resolution timezone polygons (higher resolution than \code{SimpleTimezones})}
}
}
\seealso{
setSpatialDataDir
}

